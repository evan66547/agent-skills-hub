<div align="center">

# Agent Skills Hub

**可移植 AI Agent Skills 目录（法律 / 技术 / 消费安全）；按目录加载。**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-4-blue.svg)](./skills/INDEX.md)
[![English](https://img.shields.io/badge/Docs-English-blue.svg)](./README.md)

</div>

---

## 这是什么？

收集可移植、自包含的 **Agent Skill**。任意 AI Agent 都可把 Skill 当作指令加载。

本仓库**不是**运行时、SaaS 或模型商店，而是可克隆、可 fork、可拷进本地工作区的**版本化知识目录**。

| 原则 | 含义 |
| --- | --- |
| 可移植 | 以文件交付，不绑定单一平台 |
| 可审计 | 指令与参考资料保持人类可读 |
| 可组合 | 一 Skill 一目录，按需加载 |
| 证据优先 | 关键结论优先一手来源、日期与核验状态 |
| 边界清晰 | 明确非目标与免责声明 |

## 安装（skills CLI）

用开源 [skills CLI](https://github.com/vercel-labs/skills) 最快（兼容 Cursor、Claude Code、Codex 等）：

```bash
npx skills add evan66547/agent-skills-hub            # 安装全部
npx skills add evan66547/agent-skills-hub --list     # 先浏览
npx skills add evan66547/agent-skills-hub --skill demand-letter-generator
```

也可 clone／拷贝目录后手动加载 `SKILL.md`（见下）。

## 快速开始（手动）

1. 打开 `skills/<分类>/<skill名称>/`。
2. 阅读该目录 `README.md`（适用范围、输入与限制）。
3. 将 `SKILL.md` 作为 Agent 指令加载。
4. 任务需要时再加载 `references/`。

```text
请加载 skills/legal/demand-letter-generator/SKILL.md，
根据本地案卷起草催款函。
```

完整索引：**[skills/INDEX.md](./skills/INDEX.md)**

## 当前目录

| 分类 | Skill | 主要用途 |
| --- | --- | --- |
| 食品与消费安全 | [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/) | 预包装食品证据向筛查 |
| 技术与工程 | [AI 技术可行性评估专家](./skills/tech/ai-tech-evaluator/) | 当日可行性：五维诊断与梯次方案 |
| 技术与工程 | [Codex agy](./skills/tech/codex-agy/) | 可见、安全的 Antigravity CLI 工作流 |
| 法律工作流 | [中文催款函生成](./skills/legal/demand-letter-generator/) | 本地合同/发票生成催款函（含确认闸门） |

## 仓库结构

```text
agent-skills-hub/
├── README.md / README.zh-CN.md
├── CONTRIBUTING.md
└── skills/
    ├── INDEX.md
    └── <分类>/<skill>/
        ├── SKILL.md
        ├── README.md
        └── references/
```

## 贡献

见 [CONTRIBUTING.md](./CONTRIBUTING.md)。

## 许可证

[MIT](./LICENSE) © 2026 evan66547
