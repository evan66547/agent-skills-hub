<div align="center">

# Agent Skills Hub

**用于分享可复用的高质量 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%20%7C%20EN-blue.svg)](./README.md)
[![Skill: v1.2](https://img.shields.io/badge/Skill-v1.2-orange.svg)](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md)
[![Release](https://img.shields.io/github/v/release/evan66547/agent-skills-hub?label=Release)](https://github.com/evan66547/agent-skills-hub/releases)
[![Stars](https://img.shields.io/github/stars/evan66547/agent-skills-hub?label=Stars)](https://github.com/evan66547/agent-skills-hub/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/evan66547/agent-skills-hub?label=Last%20Commit)](https://github.com/evan66547/agent-skills-hub/commits/main)

<a href="./README.md"><img alt="English" src="https://img.shields.io/badge/English-d9d9d9"></a>
<a href="./README.zh-CN.md"><img alt="简体中文" src="https://img.shields.io/badge/简体中文-d9d9d9"></a>

</div>

---

## 仓库说明

该仓库专门用于沉淀和分享可直接复用的 Agent Skills。  
当前收录技能：

- `senior-legal-contract-reviewer-v1.2`
- 适用法域：中国大陆
- 核心能力：合同风险审查、Plan B 替代条款、预期损失（EL）估算

---

## 快速开始

1. 将 [`skills/senior-legal-contract-reviewer-v1.2/SKILL.md`](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md) 作为 system prompt。
2. 输入合同文本/片段，并补充：己方角色、法域、金额区间、审查重点。
3. 获取结构化输出（风险等级、漏洞识别、法条依据、Plan B、EL 估算）。

---

## 目录结构

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── examples/
│   ├── case_a_input.md
│   └── case_a_output.json
└── skills/
    └── senior-legal-contract-reviewer-v1.2/
        ├── SKILL.md
        └── README.md
```

---

## 当前技能

### Senior Legal Contract Reviewer v1.2

- 技能主文件：[`SKILL.md`](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md)
- 介绍文档：[`README.md`](./skills/senior-legal-contract-reviewer-v1.2/README.md)
- 输入示例：[`examples/case_a_input.md`](./examples/case_a_input.md)
- 输出示例：[`examples/case_a_output.json`](./examples/case_a_output.json)

---

## 免责声明

本仓库用于法务风控与条款草拟辅助，不构成正式法律意见。实务落地请由持牌律师复核。
