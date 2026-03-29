<div align="center">

# Agent Skills Hub

**用于分享可复用的高质量 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%20%7C%20EN-blue.svg)](./README.md)
[![Skill: v1.3](https://img.shields.io/badge/Skill-v1.3-orange.svg)](./skills/senior-legal-contract-reviewer-v1.3/SKILL.md)
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

- `senior-legal-contract-reviewer-v1.3`（当前主版本）
- `senior-legal-contract-reviewer-v1.2`（对照基线）
- 适用法域：中国大陆
- 核心能力：先澄清交易背景，再输出 Plan B / Plan C 条款与预期损失（EL）估算

---

## 快速开始

1. 将 [`skills/senior-legal-contract-reviewer-v1.3/SKILL.md`](./skills/senior-legal-contract-reviewer-v1.3/SKILL.md) 作为 system prompt。
2. 输入合同文本/片段，并补充：己方角色、法域、交易目标、红线、金额区间、审查重点。
3. 获取结构化输出（风险等级、漏洞识别、Plan B / Plan C、法条依据、EL 估算）。

---

## 目录结构

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── benchmark/
│   └── data/
│       └── test_cases/
├── examples/
│   ├── case_a_input.md
│   └── case_a_output.json
└── skills/
    ├── senior-legal-contract-reviewer-v1.2/
    │   ├── SKILL.md
    │   └── README.md
    └── senior-legal-contract-reviewer-v1.3/
        ├── SKILL.md
        └── README.md
```

---

## 当前技能

### Senior Legal Contract Reviewer v1.3

- 技能主文件：[`SKILL.md`](./skills/senior-legal-contract-reviewer-v1.3/SKILL.md)
- 介绍文档：[`README.md`](./skills/senior-legal-contract-reviewer-v1.3/README.md)
- 对比报告：[`reports/v1.3-comparison-100-runs.md`](./reports/v1.3-comparison-100-runs.md)

### Senior Legal Contract Reviewer v1.2

- 技能主文件：[`SKILL.md`](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md)
- 介绍文档：[`README.md`](./skills/senior-legal-contract-reviewer-v1.2/README.md)
- 输入示例：[`examples/case_a_input.md`](./examples/case_a_input.md)
- 输出示例：[`examples/case_a_output.json`](./examples/case_a_output.json)

---

## 测评报告

- v1.3 100 次对比报告：[`reports/v1.3-comparison-100-runs.md`](./reports/v1.3-comparison-100-runs.md)
- 测试集说明：[`benchmark/data/test_cases/README.md`](./benchmark/data/test_cases/README.md)
- 官方单轮对比报告：[`reports/v1.2-official-comparison.md`](./reports/v1.2-official-comparison.md)
- 100 次自测汇总报告：[`reports/v1.2-self-test-100-runs.md`](./reports/v1.2-self-test-100-runs.md)
- 原始结构化数据（JSON）：
  - [`reports/v1.3-comparison-100-runs.json`](./reports/v1.3-comparison-100-runs.json)
  - [`reports/v1.2-official-comparison.json`](./reports/v1.2-official-comparison.json)
  - [`reports/v1.2-self-test-100-runs.json`](./reports/v1.2-self-test-100-runs.json)

---

## 免责声明

本仓库用于法务风控与条款草拟辅助，不构成正式法律意见。实务落地请由持牌律师复核。
