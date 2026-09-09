<div align="center">

# Agent Skills Hub

**Portable AI agent skills catalog (legal, tech, consumer safety). Load by directory.**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Skills](https://img.shields.io/badge/Skills-4-blue.svg)](./skills/INDEX.md)
[![简体中文](https://img.shields.io/badge/Docs-简体中文-blue.svg)](./README.zh-CN.md)

</div>

---

## What this is

A **versioned catalog** of self-contained Agent Skills (Markdown + optional metadata). Any agent (Claude, Codex, Cursor, OpenAI Agents, …) can load a skill as instructions.

This is **not** a runtime, SaaS, or model store — clone, fork, or copy folders into your workspace.

| Principle | Meaning |
| --- | --- |
| Portable | File-based; not locked to one host |
| Auditable | Human-readable instructions and references |
| Composable | One skill = one directory |
| Evidence-first | Prefer sources, dates, verification over model memory |
| Clear boundaries | Explicit non-goals and disclaimers |

## Install (skills CLI)

Fastest path via the open [skills CLI](https://github.com/vercel-labs/skills) (works with Cursor, Claude Code, Codex, and many others):

```bash
npx skills add evan66547/agent-skills-hub            # install all skills
npx skills add evan66547/agent-skills-hub --list     # browse first
npx skills add evan66547/agent-skills-hub --skill demand-letter-generator
```

Or clone / copy a folder and load `SKILL.md` manually (see below).

## Quick start (manual)

1. Open `skills/<category>/<skill-name>/`.
2. Read that folder’s `README.md` (scope, inputs, limits).
3. Load `SKILL.md` as the agent system prompt / skill.
4. Load `references/` only when the task needs them.

```text
Please load skills/legal/demand-letter-generator/SKILL.md
and draft a 催款函 from the attached case folder.
```

Full index: **[skills/INDEX.md](./skills/INDEX.md)**

## Catalog

| Category | Skill | Purpose |
| --- | --- | --- |
| Food / 消费安全 | [china-food-ingredient-brand-safety-evaluator](./skills/food/china-food-ingredient-brand-safety-evaluator/) | Evidence-based screening for Mainland China packaged foods |
| Tech | [ai-tech-evaluator](./skills/tech/ai-tech-evaluator/) | Same-day AI feasibility: 5D diagnosis + tiered plans |
| Tech | [codex-agy](./skills/tech/codex-agy/) | Visible, safe Antigravity CLI runs + Git/test checks |
| Legal | [demand-letter-generator](./skills/legal/demand-letter-generator/) | Chinese 催款函 from local contracts/invoices (with gates) |

## Layout

```text
agent-skills-hub/
├── README.md / README.zh-CN.md
├── CONTRIBUTING.md
├── LICENSE
└── skills/
    ├── INDEX.md
    ├── food/ · tech/ · legal/
    └── <category>/<skill>/
        ├── SKILL.md
        ├── README.md
        └── references/   # optional
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md). Skills should be specific, verifiable, and minimal.

## License

[MIT](./LICENSE) © 2026 evan66547
