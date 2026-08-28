---
name: codex-agy
description: 通过可用终端（优先 Ghostty，也支持 iTerm2、Terminal.app 或当前终端）可见地运行本机 Antigravity CLI（agy），安全注入任务、阶段性汇报并独立核验结果。仅在用户要求使用 agy 或查看其进度时使用。
license: MIT
---

# Codex agy

用本机 Antigravity CLI 完成已授权的开发任务，并让用户能在终端中看见真实运行过程。优先使用 Ghostty；未安装时按 iTerm2、Terminal.app、当前终端顺序回退。`agy` 是 Antigravity CLI 的简称，不是内部子代理。

## 适用边界

- 仅当用户明确要求使用 `agy` / Antigravity CLI，或要求通过 Ghostty 查看其进度时使用。
- 不替代普通的 Codex 实现、代码审查或内部子代理；不要为了使用本技能而另开 agy 会话。
- 该技能不扩大授权。提交、推送、部署、生产或本机数据库写入、`.env` / CI/CD 修改仍须逐项取得用户授权。

## 启动前

1. 确认工作目录、`agy` 与至少一种可用终端，并检查 `git status --short --branch`。脚本会按 Ghostty → iTerm2 → Terminal.app → 当前终端自动选择，也可用 `AGY_TERMINAL=ghostty|iterm2|terminal|current` 明确指定。保留非本任务改动；不要使用 `git add -A`。
2. 先确定本次任务、验收标准和禁止范围。任务复杂时，将待完成事项、不可触碰资源和验证要求写进 agy 指令。
3. 模型、推理强度与编辑模式以用户当次指定为准。未指定时，不猜测或降级模型；必要时先检查 `agy --help` / `agy models`。
4. 使用 `scripts/ghostty_agy.zsh status <工作目录>` 检查该目录是否已有 agy。**同一工作目录最多允许一个可写 agy 会话**；已有会话时必须复用，不得再启动第二个。

## 可见运行

- 新会话一律在可见终端中启动，并让 agy 成为终端前台进程。优先使用技能脚本，参数原样传给 agy：

  ```zsh
  scripts/ghostty_agy.zsh start /absolute/workdir -- <approved-options>
  ```

  脚本会拒绝在同一工作目录重复启动，并通过 `env -u NO_COLOR` 保留终端颜色。自动选择顺序为 Ghostty、iTerm2、Terminal.app；三者都不可用时直接占用当前终端运行。
- 仅在用户已授权自动编辑时使用 `--mode accept-edits`；`--dangerously-skip-permissions` 必须有明确授权，且不能被本技能默认添加。
- 延续既有会话时使用 `agy --continue ...`。不要将 `--continue` 与交互输入选项混用；先以 CLI 当前 `--help` 为准。
- 如果发现多个历史会话，先识别其工作目录和状态。不得为了“清理”而直接杀死活跃任务；仅在确认是同目录空闲重复会话且终止不会丢失工作时，才申请或沿用用户已有的终止授权。

## 无输入法干扰地发送任务

中文输入法可能破坏模拟键入。不要用 `keystroke` 逐字输入任务，也不要把包含客户材料、密钥或密码的内容放入剪贴板。

1. 先确认目标终端确实在前台且目标会话仍存在；若无法可靠聚焦，停止自动注入并让用户点击该窗口。使用 `AGY_TERMINAL` 指定的终端必须与前台窗口一致。
2. 对不含敏感信息的任务，使用 ASCII 英文提示词并通过脚本发送：

   ```zsh
   printf '%s' 'ASCII task prompt' | scripts/ghostty_agy.zsh send
   ```

   脚本只在目标终端是前台应用时执行 `Control-U → Command-V → Enter`；`Control-U` 的 AppleScript key code 必须是 `32`。Ghostty、iTerm2 和 Terminal.app 均使用同一安全流程，粘贴可绕过中文输入法转换。
3. 明确告知用户剪贴板将被临时覆盖；不要读取、打印或落盘其原剪贴板内容以尝试恢复。
4. 注入后从实际进程、终端画面或后续文件变化确认已生效；若文字仍损坏，不得假称任务已经送达。若回退到当前终端，脚本不会模拟键盘输入；应在 `start` 命令中直接传入任务参数，或由用户手动粘贴任务。

示例提示词应包含：当前阶段、验收目标、禁止动作、保留无关改动、每阶段测试与停止条件。

## 进度与结果核验

- 默认只在用户要求、一个阶段完成、出现失败或需要决策时检查；避免持续轮询或把无变化状态反复汇报给用户。
- 每次检查至少核对：`scripts/ghostty_agy.zsh status <工作目录>`、`git status --short --branch`、最新提交 / diff；绝不使用 `ps eww`，也不输出进程环境变量或任何凭据。
- 不以 agy 的文字汇报作为完成证明。对每个阶段独立检查改动范围并运行相应测试；收口时运行项目规定的完整验证。
- 汇报写清：已完成项、正在执行项、验证结果、未完成 / 阻断项，以及是否保持了“未推送、未部署、未写真实数据库”的边界。
- 如 agy 停在等待输入、测试失败、修改触及未授权范围或与其他会话改动冲突，暂停自动推进，说明证据并向用户索取必要决定。
- 默认不截取整个屏幕。只有进程和仓库证据不足、且确实需要核对终端显示时，才截取当前使用终端的单个窗口，避免暴露其他应用内容。
