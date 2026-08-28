<div align="center">

# Agent Skills Hub

**A categorized open repository for reusable AI agent skills**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-3-blue.svg)](./skills/INDEX.md)
[![中文](https://img.shields.io/badge/文档-中文-red.svg)](./README.zh-CN.md)

</div>

---

## What is this?

**Agent Skills Hub** collects portable, self-contained **Agent Skills** that any AI agent (Claude, Codex, Cursor, OpenAI Agents, and similar tools) can load as instructions.

Each skill is a folder of Markdown (and optional metadata) that defines:

- **When** the skill should run
- **What** the agent must do
- **How** to use references, tools, and evidence
- **What not** to claim (boundaries and safety)

This is not a runtime, SaaS product, or model marketplace. It is a **versioned knowledge catalog** you can clone, fork, or copy into your own agent workspace.

## Why it exists

Reusable agent behavior is often buried in long prompts, private notes, or one-off chats. Skills turn that into:

| Principle | Meaning |
| --- | --- |
| **Portable** | Works as files; no proprietary lock-in |
| **Auditable** | Instructions and references stay human-readable |
| **Composable** | One skill per folder; load only what you need |
| **Evidence-first** | Prefer primary sources, dates, and verification status over model memory |
| **Bounded** | Explicit non-goals and disclaimers reduce overclaiming |

## Current catalog

| Category | Skill | Purpose |
| --- | --- | --- |
| Food & consumer safety | [China Food Ingredient & Brand Safety Evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/README.md) | Evidence-oriented screening of packaged-food labels, ingredients, nutrition, exposure, current regulatory records, and brand/manufacturer history for products sold in Mainland China |
| Tech & engineering | [AI Tech Evaluator](./skills/tech/ai-tech-evaluator/README.md) | Live-research feasibility diagnosis for AI products and agents: five dimensions, tiered plans, executable tutorials (optimized from [ai-learning-skills](https://github.com/evan66547/ai-learning-skills)) |
| Tech & engineering | [Codex agy](./skills/tech/codex-agy/README.md) | Visible Ghostty/iTerm2/Terminal.app workflow for Antigravity CLI, safe prompt injection, single-session protection, and independent Git/test verification |
| Legal workflow | [Demand Letter Generator](./skills/legal/demand-letter-generator/README.md) | Chinese 催款函 from local evidence and template DOCX: confirmation gates, amounts/penalties, format-preserving Word, exhibit archive (optimized from [evan-agent-skills](https://github.com/evan66547/evan-agent-skills)) |

Full index (inputs, workflow, outputs, limits): **[skills/INDEX.md](./skills/INDEX.md)**

## Quick start

1. Open the skill folder under `skills/<category>/<skill-name>/`.
2. Read its `README.md` for scope, inputs, and limits.
3. Load `SKILL.md` as the agent system/instruction prompt (or attach it in your tool’s skill loader).
4. When the skill references files under `references/`, load them as needed for the task.
5. Provide the inputs the skill expects (photos, text, identifiers, context).

Example (food safety skill):

```text
Load skills/food/china-food-ingredient-brand-safety-evaluator/SKILL.md
and evaluate this product from the label photos I attach.
```

## Repository layout

```text
agent-skills-hub/
├── README.md                 # English overview (this file)
├── README.zh-CN.md           # Chinese overview
├── CONTRIBUTING.md           # How to add or improve skills
├── LICENSE                   # MIT
├── .gitignore
└── skills/
    ├── INDEX.md              # Catalog of active skills
    ├── food/                 # Category: food & consumer safety
    ├── tech/                 # Category: tech & engineering
    └── legal/                # Category: legal workflow
        ├── README.md
        └── demand-letter-generator/
            ├── README.md     # Skill introduction (EN + 中文)
            ├── SKILL.md      # Main agent instruction
            ├── agents/       # Optional host metadata (e.g. OpenAI)
            └── references/   # Progressive-disclosure detail docs
```

## Skill packaging conventions

Every skill should include at least:

| File | Role |
| --- | --- |
| `SKILL.md` | Main instruction (YAML frontmatter + body) |
| `README.md` | Human-facing intro: purpose, inputs, outputs, limits |
| `references/*` | Optional deep rules loaded only when needed |

**Frontmatter (recommended):**

```yaml
---
name: skill-folder-name
description: One paragraph — when to use this skill, what it does, key constraints.
---
```

**Naming:**

- Category: short English noun path, e.g. `food`, `legal`, `research`
- Skill folder: lowercase kebab-case, e.g. `china-food-ingredient-brand-safety-evaluator`
- Path: `skills/<category>/<skill-name>/`

After adding a skill, update:

1. `skills/INDEX.md`
2. Category `README.md` (if present)
3. Root `README.md` and `README.zh-CN.md` catalog tables

See **[CONTRIBUTING.md](./CONTRIBUTING.md)** for the full checklist.

## Quality bar for skills in this hub

- **Task-scoped** — solves a clear user job, not a vague “be helpful” persona
- **Progressive disclosure** — core rules in `SKILL.md`; detail in `references/`
- **Evidence & freshness** — live decisions must cite sources, dates, and retrieval time when applicable
- **Honest boundaries** — no pretending to be lab tests, medical diagnosis, legal opinions, or regulator decisions unless the skill is explicitly that domain *and* still disclaims appropriately
- **Privacy-aware** — do not instruct uploading unnecessary personal or third-party sensitive data
- **Bilingual welcome** — Chinese skills should ship a Chinese intro; English hub docs stay complete

## What this repo is not

- Not a list of API keys, scraped datasets, or bulk training corpora
- Not legal, medical, or food-safety certification
- Not an endorsement of any brand, product, or jurisdiction
- Not a place for unfinished personal notes unrelated to a loadable skill

## License

[MIT](./LICENSE) © 2026 evan66547

You may use, modify, and redistribute skills under MIT. You remain responsible for how agents apply them and for checking current official sources when making real-world decisions.

## Links

- [中文说明](./README.zh-CN.md)
- [Skill catalog](./skills/INDEX.md)
- [Contributing](./CONTRIBUTING.md)
- [GitHub](https://github.com/evan66547/agent-skills-hub)
