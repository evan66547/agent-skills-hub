#!/bin/zsh
set -euo pipefail

usage() {
  print -u2 'Usage:'
  print -u2 '  ghostty_agy.zsh status WORKDIR'
  print -u2 '  ghostty_agy.zsh start WORKDIR -- [AGY_OPTIONS...]'
  print -u2 '  printf %s PROMPT | ghostty_agy.zsh send'
  print -u2 '  AGY_TERMINAL=ghostty|iterm2|terminal|current|auto (default: auto)'
  exit 64
}

canonical_dir() {
  local target_dir=$1
  [[ -d "$target_dir" ]] || { print -u2 "Directory not found: $target_dir"; exit 66; }
  (cd "$target_dir" && pwd -P)
}

agy_rows_for_dir() {
  local target_dir=$1
  local pid process_dir process_row
  for pid in ${(f)"$(pgrep -x agy 2>/dev/null || true)"}; do
    [[ -n "$pid" ]] || continue
    process_dir=$(lsof -a -p "$pid" -d cwd -Fn 2>/dev/null | sed -n 's/^n//p' | head -1)
    [[ "$process_dir" == "$target_dir" ]] || continue
    process_row=$(ps -p "$pid" -o pid=,ppid=,etime=,state=,tty=,command=)
    print -r -- "$process_row"
  done
}

app_path() {
  local app=$1
  case "$app" in
    ghostty)
      [[ -d /Applications/Ghostty.app ]] && { print /Applications/Ghostty.app; return; }
      [[ -d "$HOME/Applications/Ghostty.app" ]] && { print "$HOME/Applications/Ghostty.app"; return; }
      ;;
    iterm2)
      [[ -d /Applications/iTerm.app ]] && { print /Applications/iTerm.app; return; }
      [[ -d "$HOME/Applications/iTerm.app" ]] && { print "$HOME/Applications/iTerm.app"; return; }
      ;;
    terminal)
      [[ -d /System/Applications/Utilities/Terminal.app ]] && { print /System/Applications/Utilities/Terminal.app; return; }
      [[ -d /Applications/Utilities/Terminal.app ]] && { print /Applications/Utilities/Terminal.app; return; }
      ;;
  esac
  return 1
}

select_terminal() {
  local requested=${AGY_TERMINAL:-auto}
  local app
  requested=${requested:l}
  case "$requested" in
    auto)
      for app in ghostty iterm2 terminal; do
        if app_path "$app" >/dev/null 2>&1; then
          print "$app"
          return
        fi
      done
      print current
      ;;
    ghostty|iterm2|terminal)
      app_path "$requested" >/dev/null 2>&1 || { print -u2 "Requested terminal is not installed: $requested"; exit 69; }
      print "$requested"
      ;;
    current)
      print current
      ;;
    *)
      print -u2 "Unknown AGY_TERMINAL: $requested"
      exit 64
      ;;
  esac
}

frontmost_process() {
  osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true'
}

expected_process() {
  case "$1" in
    ghostty) print Ghostty ;;
    iterm2) print iTerm2 ;;
    terminal) print Terminal ;;
    *) print '' ;;
  esac
}

start_in_gui_terminal() {
  local terminal=$1
  local launch=$2
  local bundle
  case "$terminal" in
    ghostty)
      bundle=$(app_path ghostty)
      open -na "$bundle" --args -e zsh -lc "$launch"
      ;;
    iterm2)
      osascript - "$launch" <<'APPLESCRIPT'
on run argv
  set cmd to item 1 of argv
  tell application "iTerm2"
    create window with default profile command cmd
    activate
  end tell
end run
APPLESCRIPT
      ;;
    terminal)
      osascript - "$launch" <<'APPLESCRIPT'
on run argv
  set cmd to item 1 of argv
  tell application "Terminal"
    do script cmd
    activate
  end tell
end run
APPLESCRIPT
      ;;
    *)
      print -u2 "Unsupported GUI terminal: $terminal"
      exit 69
      ;;
  esac
}

send_to_gui_terminal() {
  local terminal=$1
  local process_name=$(
    expected_process "$terminal"
  )
  local frontmost
  frontmost=$(frontmost_process)
  [[ "${frontmost:l}" == "${process_name:l}" ]] || {
    print -u2 "$process_name is not frontmost (frontmost: $frontmost)"
    exit 75
  }
  printf '%s' "$2" | pbcopy
  osascript - "$process_name" <<'APPLESCRIPT'
on run argv
  set processName to item 1 of argv
  tell application "System Events"
    tell process processName
      key code 32 using {control down}
      delay 0.2
      key code 9 using {command down}
      delay 0.2
      key code 36
    end tell
  end tell
end run
APPLESCRIPT
}

main() {
  [[ $# -ge 1 ]] || usage
  local action=$1
  shift

  case "$action" in
    status)
      [[ $# -eq 1 ]] || usage
      local workdir rows
      workdir=$(canonical_dir "$1")
      rows=$(agy_rows_for_dir "$workdir")
      if [[ -z "$rows" ]]; then
        print "No agy session for $workdir"
        return 1
      fi
      print -r -- "$rows"
      ;;

    start)
      [[ $# -ge 1 ]] || usage
      local workdir rows launch terminal arg
      workdir=$(canonical_dir "$1")
      shift
      [[ ${1:-} == '--' ]] && shift
      command -v agy >/dev/null || { print -u2 'agy not found'; exit 69; }
      rows=$(agy_rows_for_dir "$workdir")
      if [[ -n "$rows" ]]; then
        print -u2 "Refusing duplicate agy session for $workdir"
        print -u2 -r -- "$rows"
        exit 73
      fi
      terminal=$(select_terminal)
      if [[ "$terminal" == current ]]; then
        cd "$workdir"
        exec env -u NO_COLOR agy "$@"
      fi
      launch="cd ${(q)workdir} && exec env -u NO_COLOR agy"
      for arg in "$@"; do
        launch+=" ${(q)arg}"
      done
      print -u2 "Starting agy in $terminal"
      start_in_gui_terminal "$terminal" "$launch"
      ;;

    send)
      [[ $# -eq 0 ]] || usage
      local prompt terminal
      prompt=$(cat)
      [[ -n "$prompt" ]] || { print -u2 'Prompt is empty'; exit 65; }
      terminal=$(select_terminal)
      [[ "$terminal" != current ]] || {
        print -u2 'Cannot inject into the current terminal automatically; pass the task as start arguments or paste it manually.'
        exit 75
      }
      send_to_gui_terminal "$terminal" "$prompt"
      ;;

    *) usage ;;
  esac
}

main "$@"
