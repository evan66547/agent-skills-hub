<div align="center">

# Agent Skills Hub

**用于保存、分类与复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-3-blue.svg)](./skills/INDEX.md)
[![English](https://img.shields.io/badge/Docs-English-blue.svg)](./README.md)

</div>

---

## 这是什么？

**Agent Skills Hub** 收集可移植、自包含的 **Agent Skill（智能体技能）**。任意 AI Agent（Claude、Codex、Cursor、OpenAI Agents 等）都可把 Skill 当作指令加载。

每个 Skill 是一个文件夹，通常由 Markdown 与可选元数据组成，明确说明：

- **何时**启用该 Skill
- **做什么**（流程与输出）
- **如何**使用参考文件、工具与证据
- **不能做什么**（边界与安全约束）

本仓库**不是**运行时、SaaS 产品或模型商店，而是可克隆、可 fork、可拷贝进本地工作区的**版本化知识目录**。

## 为什么需要它？

可复用的 Agent 行为往往散落在长 Prompt、私有笔记或一次性对话里。Skill 把这些能力沉淀为文件：

| 原则 | 含义 |
| --- | --- |
| **可移植** | 以文件交付，不绑定单一平台 |
| **可审计** | 指令与参考资料保持人类可读 |
| **可组合** | 一 Skill 一目录，按需加载 |
| **证据优先** | 关键结论优先一手来源、日期与核验状态，而非模型记忆 |
| **边界清晰** | 明确非目标与免责声明，降低过度断言 |

## 当前目录

| 分类 | Skill | 主要用途 |
| --- | --- | --- |
| 食品与消费安全 | [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | 面向中国大陆销售的预包装食品，基于证据筛查标签、配料、营养、暴露、当前监管记录及品牌/生产企业记录 |
| 技术与工程 | [AI 技术可行性评估专家](./skills/tech/ai-tech-evaluator/README.md) | 基于实时检索判断 AI 需求「今天能否落地」：五维诊断、梯次方案与可执行教程（自 [ai-learning-skills](https://github.com/evan66547/ai-learning-skills) 优化迁入） |
| 法律工作流 | [中文催款函生成](./skills/legal/demand-letter-generator/README.md) | 本地合同/发票/模板生成催款函：确认闸门、欠款违约金、保留 Word 格式、依据归档（自 [evan-agent-skills](https://github.com/evan66547/evan-agent-skills) 优化迁入） |

完整索引（输入、流程、输出、边界）：**[skills/INDEX.md](./skills/INDEX.md)**

## 快速开始

1. 打开 `skills/<分类>/<skill名称>/` 目录。
2. 阅读该目录下的 `README.md`，了解适用范围、输入与限制。
3. 将 `SKILL.md` 作为 Agent 的系统提示 / 指令加载（或按你所用工具的 Skill 加载方式挂载）。
4. 任务需要时，再加载 `references/` 中的对应参考文件。
5. 按 Skill 要求提供输入（照片、文字、编号、食用频率等）。

示例（食品安全 Skill）：

```text
请加载 skills/food/china-food-ingredient-brand-safety-evaluator/SKILL.md，
根据我上传的包装照片评估这款食品。
```

## 仓库结构

```text
agent-skills-hub/
├── README.md                 # 英文总览
├── README.zh-CN.md           # 中文总览（本文件）
├── CONTRIBUTING.md           # 如何新增或改进 Skill
├── LICENSE                   # MIT
├── .gitignore
└── skills/
    ├── INDEX.md              # 当前有效 Skill 目录
    ├── food/                 # 分类：食品与消费安全
    ├── tech/                 # 分类：技术与工程
    └── legal/                # 分类：法律工作流
        ├── README.md
        └── demand-letter-generator/
            ├── README.md     # Skill 介绍（中英）
            ├── SKILL.md      # Agent 主指令
            ├── agents/       # 可选宿主元数据（如 OpenAI）
            └── references/   # 按需加载的细则
```

## Skill 打包约定

每个 Skill 至少应包含：

| 文件 | 作用 |
| --- | --- |
| `SKILL.md` | 主指令（YAML frontmatter + 正文） |
| `README.md` | 面向人的介绍：用途、输入、输出、边界 |
| `references/*` | 可选细则，仅在相关任务时加载 |

**Frontmatter（推荐）：**

```yaml
---
name: skill-folder-name
description: 一段话说明何时使用、做什么、关键约束。
---
```

**命名：**

- 分类：简短英文路径，如 `food`、`legal`、`research`
- Skill 目录：小写 kebab-case，如 `china-food-ingredient-brand-safety-evaluator`
- 完整路径：`skills/<分类>/<skill名称>/`

新增 Skill 后请同步更新：

1. `skills/INDEX.md`
2. 分类下的 `README.md`（如有）
3. 根目录 `README.md` 与 `README.zh-CN.md` 中的目录表

完整清单见 **[CONTRIBUTING.md](./CONTRIBUTING.md)**。

## 本仓库的 Skill 质量标准

- **任务明确** — 对应清晰用户场景，而非空泛的“尽量有帮助”
- **渐进披露** — 核心规则放 `SKILL.md`，细则放 `references/`
- **证据与时效** — 涉及实时决策时记录来源、日期与实际检索时间
- **诚实边界** — 不伪装成实验室检测、医疗诊断、法律意见或监管结论（除非 Skill 本身即该领域，且仍须免责）
- **隐私意识** — 不要求上传与任务无关的个人或第三方敏感信息
- **中英友好** — 面向中文场景的 Skill 应提供中文介绍；仓库级英文文档保持完整

## 本仓库不是什么

- 不是 API Key、爬取数据集或训练语料清单
- 不是法律、医疗或食品安全认证
- 不是对任何品牌、产品或司法辖区的背书
- 不是存放与可加载 Skill 无关的个人草稿的地方

## 许可证

[MIT](./LICENSE) © 2026 evan66547

可在 MIT 许可下使用、修改与再分发 Skill。你仍需对 Agent 的实际用法负责；涉及真实购买、食用或合规决策时，请核对最新官方信息并在必要时咨询专业人士。

## 相关链接

- [English README](./README.md)
- [Skill 分类目录](./skills/INDEX.md)
- [贡献指南](./CONTRIBUTING.md)
- [GitHub 仓库](https://github.com/evan66547/agent-skills-hub)
