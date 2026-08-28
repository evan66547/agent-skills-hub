# Codex agy

通过可用终端（优先 Ghostty，也支持 iTerm2、Terminal.app 或当前终端）可见地运行本机 Antigravity CLI（agy），让用户能看到真实开发进度，同时用可复核的 Git 与测试证据确认结果。

## 适用场景

- 用户明确要求使用 agy / Antigravity CLI 完成开发任务。
- 用户要求在 Ghostty、iTerm2 或 Terminal.app 中查看 agy 的实时执行过程。
- 需要把一次性终端操作沉淀为可复用、可审计的工作流。

## 核心能力

- **终端可见运行**：自动按 Ghostty → iTerm2 → Terminal.app → 当前终端选择运行环境，并解除 `NO_COLOR`，保留彩色输出。
- **单会话保护**：按工作目录识别已有 agy，拒绝重复启动，避免并发写入。
- **输入法安全**：不逐字模拟中文输入；对不含敏感信息的 ASCII 提示词使用剪贴板粘贴，绕过中文输入法转换。
- **阶段性核验**：在阶段完成、失败或需要决策时检查进程、Git 状态、差异和测试，不把 agy 自述当作完成证明。
- **权限边界**：不默认授予跳过权限、推送、部署、生产库写入、`.env` 或 CI/CD 修改权限。

## 使用方法

在 macOS 的工作目录中：

```zsh
scripts/ghostty_agy.zsh status /absolute/workdir
scripts/ghostty_agy.zsh start /absolute/workdir -- --continue --model gemini-3.7-flash-high --effort high --mode accept-edits
```

向已在前台的目标终端会话发送不含敏感信息的英文提示词：

```zsh
printf '%s' 'Continue the authorized task and verify each stage.' \
  | scripts/ghostty_agy.zsh send
```

`send` 会临时覆盖系统剪贴板，并执行清空当前行、粘贴、回车。若目标终端不是前台应用，脚本会拒绝注入；此时先手动点击目标窗口。可用 `AGY_TERMINAL=ghostty|iterm2|terminal|current|auto` 指定终端；没有图形终端时，使用 `current` 并直接把任务参数传给 `start`。

## 输入与输出

**输入**：工作目录、agy 参数、已授权任务提示词、验收标准和禁止动作。

**输出**：目标终端中可见的 agy 执行过程，以及基于 Git 状态、提交、差异和测试的阶段性核验结论。

## 限制

- 终端自动启动与 `send` 依赖 macOS 的 Ghostty、iTerm2 或 Terminal.app，以及 `pgrep`、`lsof`、`ps`、`osascript` 和 `pbcopy`；三种图形终端都不可用时仍可在当前终端运行，但不能自动模拟键盘注入。
- 不会读取或恢复用户原剪贴板内容；不要将客户材料、密码、Token 或密钥放入发送提示词。
- 不会自动终止活跃 agy；发现多个会话时应先确认状态和授权。
- 不能替代代码审查、生产验收或用户对推送/部署的明确授权。
