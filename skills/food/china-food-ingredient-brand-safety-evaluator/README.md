# China Food Ingredient & Brand Safety Evaluator

**中国大陆食品成分与品牌安全评估**

| Field / 字段 | Value / 内容 |
| --- | --- |
| Category / 分类 | Food · 食品与消费安全 |
| Status / 状态 | Active · 当前有效 |
| Path / 路径 | `skills/food/china-food-ingredient-brand-safety-evaluator/` |
| Main instruction / 主指令 | [`SKILL.md`](./SKILL.md) |
| Data freshness / 时效 | Verify current sources & retrieval time at use · 使用时核验当前来源与检索时间 |

---

## English

### TL;DR

A cautious, evidence-oriented skill for screening **packaged foods sold in Mainland China**. It separates:

- current regulatory / batch status  
- realistic exposure and dose  
- long-term nutrition quality  
- brand vs. actual factory history  

…instead of collapsing everything into an absolute “safe” or “unsafe” claim.

### What it does

- Transcribes and normalizes label data (ingredients, nutrition, dates, batch, producer, SC when available)
- Checks primary-source regulatory material; records issuer, document date, geography, category, and verification status
- Makes material claims auditable with URL, publication/effective date, explicit last-updated date when available, and **actual retrieval timestamp**
- Explains dose, exposure, ADME, special-population notes, and evidence strength
- Searches recent official recalls, sampling notices, and enforcement records; separates product/batch events from factory- or brand-level patterns
- Outputs one of four ratings: lower risk · medium risk / caution · high risk / avoid · information insufficient

### Recommended inputs

Clear photos of the full label (front and back), ingredient list, nutrition panel, producer, SC number, production date, shelf life, batch, and barcode if present. Add intended serving frequency and any **non-sensitive** population context. If text or a batch cannot be read, the skill should say so instead of guessing.

### Guardrails

This is an evidence-screening aid—not a laboratory test, medical diagnosis, legal opinion, food-safety certification, or regulator decision. It must not make absolute safety or toxicity claims from a label, a single study, or “nothing found in search.”

International rules appear only as technical, source-linked comparisons. A difference between jurisdictions may reflect scope, evidence, exposure assumptions, or risk-management choices—not a political statement.

For urgent illness, allergy, recall handling, medical conditions, formal compliance, or lab confirmation, use qualified professionals and the relevant official authority. Do not upload sensitive personal, customer, or case data to external services.

### Output principles

Facts first, then analysis, then practical suggestions. Every material claim should identify its source and date. “Not found in the searched official sources” is not proof that an event never occurred. Packaging alone cannot rule out pesticide/veterinary residues, heavy metals, microbial contamination, adulteration, or actual additive concentrations.

Re-check current standards, recalls, and notices for ongoing use—public records change.

---

## 中文

### 一句话介绍

面向**中国大陆销售的预包装食品**的循证筛查 Skill：识别标签与配料、解释营养结构、核对重点成分的监管与科学资料，并**分别**评价品牌方、委托方与实际生产工厂记录——而不是把一切压成“绝对安全 / 绝对有害”。

### 适用场景

- 购买前核对包装、配料表与营养成分表  
- 整理重点添加剂 / 争议成分的证据与国际对照  
- 评估偶尔、每周多次或每天食用是否合适  
- 检索召回、抽检与品牌/工厂公开记录  
- 多款同类产品横向比较与购买建议  

### 主要能力

- 逐字转录并规范化标签信息（配料顺序、复合配料、营养口径、生产商、SC、批次等）
- 优先一手监管与科学风险评估原文；记录机构、文件日期、适用地区与核验状态
- 关键事实可审计：链接、发布/生效日期、来源明确提供的更新时间（如有）、**实际检索时间**
- 结合剂量、暴露、ADME、特殊人群与证据等级说明风险
- 区分产品/批次事件、工厂级问题与品牌系统性风险
- 输出四档结论：低风险 / 中风险·谨慎 / 高风险·避免 / 信息不足

### 建议输入

尽量提供：包装正反面清晰照片、完整配料表、营养成分表、生产商、SC 编号、生产日期、保质期、批次与条形码；补充食用频率及与产品相关的**非敏感**人群背景。无法辨认时标注，不猜测。

### 风险边界

- 不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论  
- 不得仅凭“某地未许可”“搜索未发现”或单篇研究断言绝对有害或绝对安全  
- 国际法规差异仅作可核验的事实比较，不表达政治立场  
- 合法 ≠ 最优；营养不佳 ≠ 违法或有毒  
- 包装无法排除农兽药残留、重金属、致病菌、掺假或非法添加  

涉及召回处置、急性症状、过敏、孕期/儿童/慢性病等特殊情况，或需要正式合规判断时，应直接核对主管机关信息并咨询相应专业人员。请勿上传客户、案件或其他敏感个人资料。

### 免责声明

本 Skill 仅提供基于公开资料的风险筛查辅助，不等同于实验室食品检测、医疗诊断、法律意见、食品安全认证或监管结论。实际风险取决于剂量、频率、个体情况、整体膳食暴露和批次质量。用户应以当前官方资料和专业意见为准。

---

## Files / 文件

| File | Role / 作用 |
| --- | --- |
| [`SKILL.md`](./SKILL.md) | Main agent instruction / Agent 主指令 |
| [`references/evidence-and-regulation.md`](./references/evidence-and-regulation.md) | Sources, toxicology, regulatory comparison / 证据、毒理与监管对照 |
| [`references/ingredients-and-nutrition.md`](./references/ingredients-and-nutrition.md) | Label, ingredients, nutrition / 包装、配料与营养 |
| [`references/brand-and-report.md`](./references/brand-and-report.md) | Brand/factory rules & report template / 品牌工厂规则与报告模板 |
| [`agents/openai.yaml`](./agents/openai.yaml) | Optional OpenAI agent UI metadata / 可选 OpenAI 界面元数据 |

## License / 许可

Released under the repository [MIT License](../../../LICENSE).  
遵循仓库 [MIT 许可证](../../../LICENSE)。

Intended for consumer-information and research-support workflows. Users remain responsible for checking current official information and obtaining professional advice when required.  
用于消费信息与研究辅助；用户仍须自行核对最新官方信息，并在必要时寻求专业意见。
