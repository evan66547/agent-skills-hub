<div align="center">

# Agent Skills Hub

**A categorized home for reusable AI agent skills**  
**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.zh-CN.md)

</div>

---

## Current skill

The active catalog currently contains one skill. Its description is derived from the skill's SKILL.md and reference files.

| Category | Skill | Purpose |
| --- | --- | --- |
| Food and consumer safety | [China Food Ingredient & Brand Safety Evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | Evidence-oriented screening of packaged-food labels, ingredients, nutrition, exposure, current regulatory records, and brand/manufacturer history for products sold in Mainland China. |

See the [skill index](./skills/INDEX.md) for inputs, workflow, references, outputs, and limitations.

## How to use it

1. Read the skill README.
2. Load its SKILL.md as the agent instruction.
3. Provide the product label, ingredient list, nutrition panel, producer, batch, and intended frequency when available.
4. For current purchase or consumption decisions, follow the skill's live-source and retrieval-time requirements.

## Source and safety requirements

The skill records source institution, document title, publication/effective date, explicit last-updated date when available, actual retrieval time, URL, supported fact, and verification status.

It does not replace laboratory testing, medical diagnosis, legal advice, food-safety certification, or a regulator decision. Packaging alone cannot rule out contamination, adulteration, illegal additives, or actual additive concentrations.

## Structure

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

New skills should use `skills/<category>/<skill-name>/` and add a matching entry to the bilingual README and `skills/INDEX.md`.