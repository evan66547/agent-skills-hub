# China Food Ingredient & Brand Safety Evaluator

中国大陆食品成分与品牌安全评估 Skill

## TL;DR

A cautious, evidence-oriented assistant for screening packaged-food labels, nutrition, brand history, and manufacturer records relevant to products sold in Mainland China. It separates current regulatory status, realistic exposure, long-term nutrition, and brand or factory history instead of collapsing them into an absolute “safe” or “unsafe” claim.

本 Skill 用于基于公开证据筛查在中国大陆销售的预包装食品：识别标签与配料、解释营养结构、核对重点成分的监管与科学资料，并区分品牌方、委托方和实际生产工厂的记录。

## What it does

- Transcribes and normalizes label information, including ingredients, nutrition, dates, batch identifiers, producer and SC information when available.
- Checks current primary-source regulatory material and records the issuer, document date, geography, product category, and verification status.
- Explains dose, exposure, ADME (absorption, distribution, metabolism, and excretion), special-population considerations, and evidence strength.
- Searches recent official recalls, sampling notices, and enforcement records, separating product/batch events from factory-level or system-level patterns.
- Produces one of four conclusions: lower risk, medium risk/caution, high risk/avoid, or information insufficient.

## Guardrails

This is an evidence-screening aid, not a laboratory test, medical diagnosis, legal opinion, food-safety certification, or regulator decision. It must not make absolute safety or toxicity claims from a label, a single study, or the absence of a search result.

International rules are shown only as technical, source-linked comparisons. A difference between jurisdictions may reflect scope, evidence, exposure assumptions, or risk-management choices; it is not a political statement and must not be used to infer the position of a country, government, or people.

The evaluator should use qualified professionals and the relevant official authority for urgent illness, allergy, recall handling, medical conditions, formal compliance questions, or laboratory confirmation. Do not upload sensitive personal, customer, or case information to an external service.

## Recommended input

Provide clear photos of the full label, front and back, ingredient list, nutrition panel, producer, SC number, production date, shelf life, batch, and barcode if present. Add the intended serving frequency and any relevant non-sensitive population context. If text or a batch cannot be read, the output should say so instead of guessing.

## Output principles

The report states facts first, then analysis, then practical suggestions. Every material claim should identify its source and date. “Not found in the searched official sources” is not treated as proof that an event never occurred. Packaging alone cannot rule out pesticide or veterinary-drug residues, heavy metals, microbial contamination, adulteration, or actual additive concentrations.

For ongoing use, re-check current standards, recalls, and official notices because regulatory status and public records can change.

## Files

- Main instruction: [`SKILL.md`](./SKILL.md)
- Source and verification rules: [`references/evidence-and-regulation.md`](./references/evidence-and-regulation.md)
- Label, ingredient, and nutrition rules: [`references/ingredients-and-nutrition.md`](./references/ingredients-and-nutrition.md)
- Brand, factory, rating, and report template: [`references/brand-and-report.md`](./references/brand-and-report.md)
- Optional UI metadata: [`agents/openai.yaml`](./agents/openai.yaml)

## License and scope

This directory is released under the repository license. It is intended for consumer-information and research-support workflows; users remain responsible for checking current official information and obtaining professional advice when the situation requires it.

## 中文说明

### 适用场景

适合用于购买前的标签核对、重点成分的证据整理、营养结构筛查，以及品牌与实际生产企业的公开记录检索。输出会明确证据等级、资料截止时间和信息缺口。

### 风险边界

本 Skill 不进行实验室检测，不提供医疗诊断、法律意见、食品安全认证或监管机关结论；不会仅凭“某地未许可”“搜索未发现”或单篇研究断言成分绝对有害或绝对安全。国际法规差异仅作可核验的事实比较，不表达政治立场，也不据此推断任何国家、政府或群体的立场。

如涉及召回处置、急性症状、过敏、孕期/儿童/慢性病等特殊情况，或需要正式合规判断，应直接核对主管机关信息并咨询相应专业人员。请勿上传客户、案件或其他敏感个人资料。

### 免责声明

本 Skill 仅提供基于公开资料的风险筛查辅助，不等同于实验室食品检测、医疗诊断、法律意见、食品安全认证或监管结论。实际风险取决于剂量、频率、个体情况、整体膳食暴露和批次质量；包装无法排除污染、掺假或非法添加。用户应以当前官方资料和专业意见为准。