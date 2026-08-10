<div align="center">

# Agent Skills Hub

**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.md)

</div>

---

## 当前有效 Skill

当前仓库包含 1 个有效 Skill。下面的介绍依据该 Skill 的 SKILL.md 和参考文件整理。

| 分类 | Skill | 主要用途 |
| --- | --- | --- |
| 食品与消费安全 | [中国大陆食品成分与品牌安全评估](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | 面向中国大陆销售食品，基于证据筛查包装标签、配料、营养、实际暴露、当前监管记录及品牌/生产企业记录。 |

主文件、参考资料、输入要求、输出格式和限制见[完整 Skill 目录](./skills/INDEX.md)。

## 当前 Skill 能做什么

该食品安全评估 Skill 围绕具体产品回答三个有边界的问题：

1. 根据现有资料，能否合理食用？
2. 是否适合长期或高频食用？
3. 是否值得考虑风险更低或营养更合理的替代品？

可使用包装照片或文字，包括配料表、营养成分表、生产商、SC 编号、日期、批次和条形码。主要流程包括：

- 产品与批次识别、标签转录、配料标准化和营养换算；
- 当前召回、抽检、消费警示和适用标准核查；
- 成分毒理、ADI/TDI/UL 等阈值、实际暴露情景、ADME 和证据强度分析；
- 说明国际法规差异中的适用范围、暴露模型和风险管理口径；
- 特殊人群以及糖、钠、脂肪和能量等长期营养风险筛查；
- 分别调查品牌方、委托/OEM 方和实际生产工厂；
- 输出高风险、中风险、低风险或信息不足四档结论，并给出一个购买建议。

## 来源与时效要求

涉及购买或食用决策时，必须核查当前召回、标准、监管状态及品牌/工厂记录。重要事实应记录来源机构、文件标题、发布日期或生效日期、来源明确提供的最后更新时间（如有）、带时区的实际检索时间、链接、所支持的事实和核验状态。

搜索未发现记录不等于从未发生。包装本身无法排除残留、重金属、微生物污染、掺假、非法添加或实际添加剂含量。

## 使用边界

本仓库不提供实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论；不会仅凭单篇研究、化学名称、国外法规差异或品牌声誉，断言绝对安全或绝对有害。

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

历史合同审核测评、示例和报告保存在 [`archive/contract-review-benchmark/`](./archive/contract-review-benchmark/README.md)，不属于当前有效 Skill。