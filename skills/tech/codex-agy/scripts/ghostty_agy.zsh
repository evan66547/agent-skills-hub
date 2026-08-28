#!/bin/zsh
set -euo pipefail

usage() {
  print -u2 'Usage:'
  print -u2 '  ghostty_agy.zsh status WORKDIR'
  print -u2 '  ghostty_agy.zsh start WORKDIR -- [AGY_OPTIONS...]'
  print -u2 '  printf %s PROMPT | ghostty_agy.zsh send'
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
      local workdir rows launch arg
      workdir=$(canonical_dir "$1")
      shift
      [[ ${1:-} == '--' ]] && shift
      command -v agy >/dev/null || { print -u2 'agy not found'; exit 69; }
      [[ -d /Applications/Ghostty.app ]] || { print -u2 'Ghostty.app not found'; exit 69; }
      rows=$(agy_rows_for_dir "$workdir")
      if [[ -n "$rows" ]]; then
        print -u2 "Refusing duplicate agy session for $workdir"
        print -u2 -r -- "$rows"
        exit 73
      fi
      launch="cd ${(q)workdir} && exec env -u NO_COLOR agy"
      for arg in "$@"; do
        launch+=" ${(q)arg}"
      done
      open -na Ghostty.app --args -e zsh -lc "$launch"
      ;;

    send)
      [[ $# -eq 0 ]] || usage
      local prompt frontmost
      prompt=$(cat)
      [[ -n "$prompt" ]] || { print -u2 'Prompt is empty'; exit 65; }
      frontmost=$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')
      [[ "${frontmost:l}" == 'ghostty' ]] || {
        print -u2 "Ghostty is not frontmost (frontmost: $frontmost)"
        exit 75
      }
      printf '%s' "$prompt" | pbcopy
      osascript <<'APPLESCRIPT'
tell application "System Events"
  tell process "Ghostty"
    key code 32 using {control down}
    delay 0.2
    key code 9 using {command down}
    delay 0.2
    key code 36
  end tell
end tell
APPLESCRIPT
      ;;

    *) usage ;;
  esac
}

main "$@"
