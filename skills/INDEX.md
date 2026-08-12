# Skill Catalog / Skill 分类目录

This file lists **active** skills under `skills/`. Descriptions are derived from each skill’s `SKILL.md` and reference files.  
本目录只列出 `skills/` 下**当前有效**的 Skill；介绍依据对应 `SKILL.md` 与参考文件整理。

---

## Food / 食品与消费安全

Category intro: [food/README.md](./food/README.md)

### China Food Ingredient & Brand Safety Evaluator  
### 中国大陆食品成分与品牌安全评估

| | |
| --- | --- |
| **Path / 路径** | [`food/china-food-ingredient-brand-safety-evaluator/`](./food/china-food-ingredient-brand-safety-evaluator/) |
| **Main / 主文件** | [SKILL.md](./food/china-food-ingredient-brand-safety-evaluator/SKILL.md) |
| **Intro / 介绍** | [README.md](./food/china-food-ingredient-brand-safety-evaluator/README.md) |
| **References / 参考** | [evidence-and-regulation.md](./food/china-food-ingredient-brand-safety-evaluator/references/evidence-and-regulation.md) · [ingredients-and-nutrition.md](./food/china-food-ingredient-brand-safety-evaluator/references/ingredients-and-nutrition.md) · [brand-and-report.md](./food/china-food-ingredient-brand-safety-evaluator/references/brand-and-report.md) |
| **Status / 状态** | Active / 当前有效 |

**Purpose / 用途**

Evidence-oriented screening of packaged foods sold in Mainland China: labels, ingredients, nutrition, exposure, current regulatory records, and brand/factory history.  
面向中国大陆销售的预包装食品，基于证据筛查标签、配料、营养、暴露、当前监管记录及品牌/工厂记录。

**Inputs / 输入**

Packaging photos or text, ingredient list, nutrition panel, producer, SC number, dates, batch, barcode, and intended frequency when available.  
包装照片或文字、配料表、营养成分表、生产商、SC 编号、日期、批次、条形码及食用频率（如有）。

**Outputs / 输出**

Product identity, current-batch screening, key ingredient & exposure analysis, brand/factory records, four-tier risk rating, and purchase suggestion.  
产品识别、当前批次筛查、重点成分与暴露分析、品牌/工厂记录、四档风险结论与购买建议。

**Freshness / 时效**

Record source dates, actual retrieval time, URL, and verification status. Purchase or consumption decisions require live checks.  
记录来源日期、实际检索时间、链接与核验状态；购买或食用决策必须核查当前信息。

**Boundary / 边界**

Does not replace laboratory testing, medical diagnosis, legal advice, food-safety certification, or a regulator decision.  
不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。

---

## Adding a skill / 新增 Skill

1. Place the skill at `skills/<category>/<skill-name>/`.  
   使用路径 `skills/<分类>/<skill名称>/`。
2. Include `SKILL.md` + human-facing `README.md` (and optional `references/`).  
   至少包含 `SKILL.md` 与面向人的 `README.md`（可选 `references/`）。
3. Update this index, the category README, and both root READMEs.  
   同步更新本目录、分类 README，以及根目录中英文 README。
4. Catalog entries may only describe capabilities already present in the skill files.  
   目录介绍只能描述对应 Skill 文件中已有的能力、输入、输出与边界。

Full checklist: [CONTRIBUTING.md](../CONTRIBUTING.md)
