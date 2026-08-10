<div align="center">

# Agent Skills Hub

**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.md)

</div>

---

## 当前 Skill

当前有效目录包含 1 个 Skill，介绍内容依据对应的 SKILL.md 和参考文件整理。

| 分类 | Skill | 主要用途 |
| --- | --- | --- |
| 食品与消费安全 | [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | 面向中国大陆销售食品，基于证据筛查包装标签、配料、营养、实际暴露、当前监管记录及品牌/生产企业记录。 |

输入、流程、参考资料、输出和限制见 [Skill 分类目录](./skills/INDEX.md)。

## 使用方式

1. 阅读该 Skill 的 README。
2. 将 SKILL.md 作为 Agent 指令加载。
3. 尽量提供产品标签、配料表、营养成分表、生产商、批次和食用频率。
4. 涉及当前购买或食用决策时，遵循 Skill 的实时来源核验和检索时间要求。

## 来源与安全要求

Skill 会记录来源机构、文件标题、发布日期或生效日期、来源明确提供的更新时间（如有）、实际检索时间、链接、支持的事实和核验状态。

本 Skill 不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。包装本身无法排除污染、掺假、非法添加或实际添加剂含量。

## 目录结构

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── .gitignore
└── skills/
    ├── INDEX.md
    └── food/
        └── china-food-ingredient-brand-safety-evaluator/
```

新增 Skill 时使用 `skills/<分类>/<skill名称>/`，并同步更新中英文 README 和 `skills/INDEX.md`。