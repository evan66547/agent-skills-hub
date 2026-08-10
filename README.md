<div align="center">

# Agent Skills Hub

**A categorized home for reusable AI agent skills**  
**用于保存、分类和复用 AI Agent Skills 的开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%2FEN-blue.svg)](./README.zh-CN.md)

</div>

---

## Active skill catalog

The repository currently contains one active skill. Its public description below is derived from the skill's SKILL.md and reference files.

| Category | Skill | Primary purpose |
| --- | --- | --- |
| Food and consumer safety | [China Food Ingredient & Brand Safety Evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | Evidence-oriented screening of packaged-food labels, ingredients, nutrition, exposure, current regulatory records, and brand/manufacturer history for products sold in Mainland China. |

See the [full skill index](./skills/INDEX.md) for the main instruction, references, inputs, outputs, and limitations.

## What the current skill does

The food evaluator is designed to answer three bounded questions about a specific product:

1. Can it reasonably be eaten based on the available evidence?
2. Is it suitable for long-term or frequent consumption?
3. Is a lower-risk or nutritionally better substitute worth considering?

It can work from package photos or text, including the ingredient list, nutrition panel, producer, SC number, dates, batch, and barcode. The workflow covers:

- product and batch identification, label transcription, ingredient normalization, and nutrition conversion;
- current recall, sampling, warning, and applicable-standard checks;
- ingredient toxicology, ADI/TDI/UL-style thresholds, exposure scenarios, ADME, and evidence strength;
- international regulatory comparisons with attention to different scopes and risk-management assumptions;
- special-population considerations and long-term sugar, sodium, fat, and energy screening;
- separate records for the brand, OEM/commissioning party, and actual manufacturing plant;
- a four-level conclusion: high risk, medium risk, low risk, or information insufficient, followed by one purchase recommendation.

## Source and freshness requirements

For purchase or consumption decisions, the skill requires current checks of recalls, standards, regulatory status, and brand/factory records. Material claims must carry the source institution, document title, publication/effective date, explicit last-updated date when the source provides one, actual retrieval time with timezone, URL, supported fact, and verification status.

A missing search result is not proof that an event never occurred. Packaging alone cannot rule out residues, heavy metals, microbial contamination, adulteration, illegal additives, or actual additive concentrations.

## Safety boundaries

This repository does not provide laboratory testing, medical diagnosis, legal advice, food-safety certification, or a regulator decision. It does not turn a single study, a chemical name, a foreign regulatory difference, or a brand reputation into an absolute safety or toxicity claim.

## Repository layout

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

Historical contract-review benchmark, example, and report files are preserved under [`archive/contract-review-benchmark/`](./archive/contract-review-benchmark/README.md). They are not active skills.