<div align="center">

# Agent Skills Hub

**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.md)

</div>

---

## 分类目录

有效 Skill 统一放在 `skills/<分类>/<skill名称>/` 下。可先浏览[完整目录](./skills/INDEX.md)，再阅读具体 Skill 的介绍文档和主文件。

| 分类 | Skill | 状态 |
| --- | --- | --- |
| 食品与消费安全 | [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | 当前有效 |

## 使用方式

1. 从分类目录选择 Skill。
2. 阅读该 Skill 的 README，了解范围、输入、参考资料和限制。
3. 将对应的 SKILL.md 作为 Agent 指令加载。
4. 对当前性或影响较大的问题，遵循 Skill 的来源核验规则，并记录实际检索时间。

## 仓库约定

- 每个有效 Skill 使用一个 `skills/<分类>/<skill名称>/` 独立目录。
- 将 SKILL.md、README.md、可选的 `agents/` 和任务所需的 `references/` 放在一起。
- 公开介绍应基于事实，明确适用边界，避免绝对安全、法律、医疗或效果承诺。
- 对会变化的信息保留来源链接、来源日期、来源明确提供的更新时间（如有）和实际检索时间。

## 目录结构

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── skills/
│   ├── INDEX.md
│   └── food/
│       └── china-food-ingredient-brand-safety-evaluator/
└── archive/
    └── contract-review-benchmark/
```

## 历史资料

历史合同审核测评、示例和报告保存在 [`archive/contract-review-benchmark/`](./archive/contract-review-benchmark/README.md)，仅作参考，不代表当前有效 Skill。

## 许可与责任

本仓库提供可复用的 Agent 指令和研究辅助资料。具体使用时仍应核对当前来源，并在必要时咨询相应专业人员。