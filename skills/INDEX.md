# Skill Catalog / Skill 分类目录

本目录只列出 `skills/` 下当前有效的 Skill；内容依据对应 SKILL.md 和参考文件整理。

## Food / 食品与消费安全

### China Food Ingredient & Brand Safety Evaluator / 中国大陆食品成分与品牌安全评估

- **Main instruction / 主文件：** [SKILL.md](./food/china-food-ingredient-brand-safety-evaluator/SKILL.md)
- **Introduction / 介绍：** [README.md](./food/china-food-ingredient-brand-safety-evaluator/README.md)
- **Reference files / 参考文件：**
  - [evidence-and-regulation.md](./food/china-food-ingredient-brand-safety-evaluator/references/evidence-and-regulation.md)：来源、监管、毒理、ADME、剂量和国际对照
  - [ingredients-and-nutrition.md](./food/china-food-ingredient-brand-safety-evaluator/references/ingredients-and-nutrition.md)：标签、配料、营养、长期摄入和特殊人群
  - [brand-and-report.md](./food/china-food-ingredient-brand-safety-evaluator/references/brand-and-report.md)：品牌/工厂记录、评级、来源表和完整报告模板
- **Inputs / 输入：** 包装照片或文字、配料表、营养成分表、生产商、SC 编号、日期、批次、条形码及食用频率（如有）。
- **Outputs / 输出：** 产品识别、当前批次筛查、重点成分与暴露分析、品牌/工厂记录、四档风险结论和单一购买建议。
- **Freshness / 时效：** 涉及实际购买或食用时，必须核查当前召回、标准、监管状态和品牌记录；报告记录来源日期、实际检索时间、链接和核验状态。
- **Boundary / 边界：** 不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。

## Adding a skill / 新增 Skill

新增条目必须先检查对应 SKILL.md 和参考文件，目录介绍只能描述其中已有的输入、流程、输出和边界；不要凭空增加能力或效果承诺。

使用 `skills/<分类>/<skill名称>/`，并同步更新本目录与根目录中英文 README。