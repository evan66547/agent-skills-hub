# 变更日志

## [1.2.0] - 2026-08-12

### 文档与结构

- 迁入 [agent-skills-hub](https://github.com/evan66547/agent-skills-hub) `skills/legal/demand-letter-generator/`。
- 主指令与参考文件拆分：`evidence-and-amounts.md`、`docx-and-archive.md`。
- 补充中英 README；与 hub 打包约定对齐。

### 能力（继承并整理自上游）

- 数据确认闸门（证据 / 用户 / 推算）。
- 公开版整案移动前必须确认目标路径。
- 无合同违约金约定时不得擅自套 LPR；用户确认后须检索官方 LPR。
- 天数口径与《民法典》期间计算思路对齐说明。

## [1.1.0] - 2026-06-11

（上游 [evan-agent-skills](https://github.com/evan66547/evan-agent-skills)）

- 数据确认闸门；主体与收款账户须用户确认。
- GitHub 版取消默认本机归档路径。

## [1.0.0] - 2026-06-10

（上游）

- 初版：生成/修改/检查/归档中文催款函，欠款与违约金，保留 DOCX 格式。
