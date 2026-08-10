<div align="center">

# Agent Skills Hub

**A categorized home for reusable AI agent skills**  
**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.zh-CN.md)

</div>

---

## Catalog

Active skills are organized under `skills/<category>/<skill-name>/`. Browse the [full catalog](./skills/INDEX.md) or open a skill README before loading its SKILL.md.

| Category | Skill | Status |
| --- | --- | --- |
| Food | [China Food Ingredient & Brand Safety Evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | Active |

## How to use a skill

1. Choose a skill from the catalog.
2. Read its README for scope, inputs, references, and limitations.
3. Load the skill's SKILL.md as the agent instruction.
4. For current or high-impact questions, follow the skill's source-verification rules and record the retrieval time.

## Repository conventions

- One active skill per directory under `skills/<category>/<skill-name>/`.
- Keep SKILL.md, README.md, optional `agents/`, and task-specific `references/` together.
- Describe scope and limitations factually; avoid absolute safety, legal, medical, or performance claims.
- Treat changing information as time-sensitive and preserve source links, source dates, explicit last-updated dates when available, and actual retrieval timestamps.

## Layout

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

## Archive

Historical contract-review benchmark, examples, and reports are preserved under [`archive/contract-review-benchmark/`](./archive/contract-review-benchmark/). They are reference material only, not active skills.

## License and responsibility

This repository provides reusable agent instructions and research support. Users remain responsible for checking current sources and obtaining qualified professional advice when a situation requires it.