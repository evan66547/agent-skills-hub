<div align="center">

# Agent Skills Hub

**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%20%7C%20EN-blue.svg)](./README.md)

</div>

---

## 仓库用途

本仓库按类型保存可复用的 Agent Skill。每个 Skill 将主文件 SKILL.md、介绍文档和所需参考资料放在同一目录，便于浏览和复用。

## Skill 分类目录

Skill 统一放在 `skills/<分类>/<skill名称>/` 下；只有在确实出现该类型 Skill 时才新增分类。

### 食品与消费安全

- [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md)
  - 基于证据筛查食品标签、营养及品牌/生产企业记录。
  - 不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。

## 快速开始

1. 从分类目录选择一个 Skill。
2. 将该目录中的 SKILL.md 作为 Agent 指令加载。
3. 按任务需要阅读 README.md 和 references/ 中的资料。

## 目录结构

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── skills/
│   └── food/
│       └── china-food-ingredient-brand-safety-evaluator/
│           ├── SKILL.md
│           ├── README.md
│           ├── agents/
│           └── references/
├── benchmark/
├── examples/
└── reports/
```

benchmark、examples 和 reports 目录作为历史测评资料保留，不代表当前仍发布合同审核 Skill。

## 新增 Skill 约定

每个 Skill 使用独立目录；公开介绍应基于事实，明确适用边界，避免绝对安全或效果承诺；涉及会变化的信息时，应链接并核对当前一手来源。

## 说明

本仓库提供可复用的 Agent 指令和研究辅助资料。具体使用时仍应核对当前资料，并在必要时咨询相应专业人员。