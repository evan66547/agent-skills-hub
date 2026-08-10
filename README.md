<div align="center">

# Agent Skills Hub

**Open-source repository for reusable AI agent skills**  
**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%20%7C%20EN-blue.svg)](./README.zh-CN.md)

</div>

---

## What is this?

Agent Skills Hub stores reusable skills in type-based directories. Each skill keeps its main SKILL.md, an optional introduction, and supporting references together.

## Skill catalog

Skills live under `skills/<category>/<skill-name>/`. Add a new category only when a real skill needs it.

### Food

- [China Food Ingredient & Brand Safety Evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md)
  - Evidence-oriented screening of food labels, nutrition, and brand/manufacturer records.
  - Not laboratory testing, medical diagnosis, legal advice, food-safety certification, or a regulator decision.

## Quick start

1. Choose a skill from the catalog.
2. Load its SKILL.md as the agent instruction.
3. Read the skill README and references when the task requires them.

## Repository layout

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

The benchmark, examples, and reports directories are retained as historical evaluation material. They are not active contract-review skills.

## Contribution convention

Use one directory per skill. Keep the public description factual, state limitations clearly, avoid absolute safety or performance claims, and link to current primary sources when the skill depends on changing information.

## Notes

This repository provides reusable agent instructions and research support. Users remain responsible for checking current sources and obtaining qualified professional advice when a situation requires it.