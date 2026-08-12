# Contributing / 贡献指南

Thank you for helping improve **Agent Skills Hub**.  
感谢你为 **Agent Skills Hub** 贡献内容。

This repository only accepts **loadable Agent Skills** and documentation that supports them.  
本仓库只收录**可被 Agent 加载的 Skill**，以及支撑其使用的文档。

---

## English

### What belongs here

- New skills under `skills/<category>/<skill-name>/`
- Fixes and clarifications to existing `SKILL.md` / `references/`
- Catalog and README updates that keep the index accurate
- Small packaging improvements (frontmatter, OpenAI agent metadata, structure)

### What does not belong here

- Unrelated personal notes, scrapers, bulk datasets, or API secrets
- Benchmark dumps, one-off experiment reports, or social-preview assets not needed to run a skill
- Skills that instruct the agent to break the law, harvest PII without need, or make absolute safety / medical claims without boundaries
- Duplicate skills that only rename an existing folder without a clear improvement

### Add a skill (checklist)

1. Create `skills/<category>/<skill-name>/` (kebab-case name).
2. Add at least:
   - `SKILL.md` — main instruction with YAML frontmatter (`name`, `description`)
   - `README.md` — human intro: purpose, inputs, outputs, limits (include Chinese if the skill targets Chinese users)
3. Optionally add:
   - `references/*.md` — progressive detail
   - `agents/openai.yaml` — host UI metadata
4. Update:
   - `skills/INDEX.md`
   - Category `README.md` if the category has one
   - Root `README.md` and `README.zh-CN.md` catalog tables
5. Keep the skill **self-contained**: an agent should work by loading `SKILL.md` (+ needed references) without private context from this PR description.

### Writing quality

- Prefer primary sources, dates, and verification status for factual domains
- Separate facts, analysis, and recommendations in output templates
- State non-goals and disclaimers clearly
- Avoid marketing language and absolute claims (“always safe”, “never toxic”)

### Pull requests

- One skill or one coherent doc change per PR when possible
- Describe: user job, inputs/outputs, boundaries, and how you tested the instruction
- Do not commit `.DS_Store`, secrets, large binaries, or generated dumps

---

## 中文

### 适合提交的内容

- `skills/<分类>/<skill名称>/` 下的新 Skill
- 对现有 `SKILL.md` / `references/` 的修正与澄清
- 使目录保持准确的索引与 README 更新
- 小型打包改进（frontmatter、OpenAI 元数据、目录结构）

### 不适合提交的内容

- 与 Skill 无关的个人笔记、爬虫、批量数据集或密钥
- 与运行 Skill 无关的基准测试 dump、一次性实验报告、宣传图
- 要求 Agent 违法、无必要采集隐私，或在无边界情况下做绝对安全/医疗断言的 Skill
- 仅改名、无实质改进的重复 Skill

### 新增 Skill 清单

1. 创建 `skills/<分类>/<skill名称>/`（小写 kebab-case）。
2. 至少包含：
   - `SKILL.md` — 主指令，含 YAML frontmatter（`name`、`description`）
   - `README.md` — 面向人的介绍：用途、输入、输出、边界（面向中文用户时须有中文说明）
3. 可选：
   - `references/*.md` — 按需加载的细则
   - `agents/openai.yaml` — 宿主界面元数据
4. 同步更新：
   - `skills/INDEX.md`
   - 分类 `README.md`（如有）
   - 根目录 `README.md` 与 `README.zh-CN.md` 的目录表
5. 保持**自包含**：仅加载 `SKILL.md`（及所需 reference）即可工作，不依赖 PR 描述里的私有上下文。

### 写作质量

- 事实类领域优先一手来源、日期与核验状态
- 输出模板中区分事实、分析与建议
- 明确非目标与免责声明
- 避免营销话术与绝对化断言（“绝对安全”“一定有毒”）

### Pull Request

- 尽量一个 PR 对应一个 Skill 或一组相关文档改动
- 说明：用户任务、输入输出、边界、如何验证指令
- 不要提交 `.DS_Store`、密钥、大体积二进制或生成 dump

## License

Contributions are licensed under the repository [MIT License](./LICENSE).  
贡献内容默认遵循本仓库 [MIT 许可证](./LICENSE)。
