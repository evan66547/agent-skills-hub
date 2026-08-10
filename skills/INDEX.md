# Skill Catalog / Skill 分类目录

本目录只列出 `skills/` 下当前有效的 Skill；介绍内容依据对应 SKILL.md 和参考文件整理。

## Food / 食品与消费安全

### China Food Ingredient & Brand Safety Evaluator / 中国大陆食品成分与品牌安全评估

- **Main instruction / 主文件：** [SKILL.md](./food/china-food-ingredient-brand-safety-evaluator/SKILL.md)
- **Introduction / 介绍：** [README.md](./food/china-food-ingredient-brand-safety-evaluator/README.md)
- **References / 参考文件：**
  - [evidence-and-regulation.md](./food/china-food-ingredient-brand-safety-evaluator/references/evidence-and-regulation.md)
  - [ingredients-and-nutrition.md](./food/china-food-ingredient-brand-safety-evaluator/references/ingredients-and-nutrition.md)
  - [brand-and-report.md](./food/china-food-ingredient-brand-safety-evaluator/references/brand-and-report.md)
- **Inputs / 输入：** 包装照片或文字、配料表、营养成分表、生产商、SC 编号、日期、批次、条形码及食用频率（如有）。
- **Outputs / 输出：** 产品识别、当前批次筛查、重点成分与暴露分析、品牌/工厂记录、四档风险结论和购买建议。
- **Freshness / 时效：** 记录来源日期、实际检索时间、链接和核验状态；购买或食用决策必须核查当前信息。
- **Boundary / 边界：** 不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。

## Adding a skill / 新增 Skill

新增 Skill 使用 `skills/<分类>/<skill名称>/`，并同步更新本目录与根目录中英文 README。目录介绍只能描述对应 SKILL.md 和参考文件中已有的能力、输入、输出和边界。