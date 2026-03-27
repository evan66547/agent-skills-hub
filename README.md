<div align="center">

# Agent Skills Hub

**Open-source repository for production-ready AI agent skills**  
**面向实战的 AI Agent Skills 开源仓库**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Language: ZH/EN](https://img.shields.io/badge/Language-ZH%20%7C%20EN-blue.svg)](./README.zh-CN.md)
[![Skill: v1.2](https://img.shields.io/badge/Skill-v1.2-orange.svg)](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md)
[![Release](https://img.shields.io/github/v/release/evan66547/agent-skills-hub?label=Release)](https://github.com/evan66547/agent-skills-hub/releases)
[![Stars](https://img.shields.io/github/stars/evan66547/agent-skills-hub?label=Stars)](https://github.com/evan66547/agent-skills-hub/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/evan66547/agent-skills-hub?label=Last%20Commit)](https://github.com/evan66547/agent-skills-hub/commits/main)

<a href="./README.md"><img alt="English" src="https://img.shields.io/badge/English-d9d9d9"></a>
<a href="./README.zh-CN.md"><img alt="简体中文" src="https://img.shields.io/badge/简体中文-d9d9d9"></a>

</div>

---

## What is this?

This repository is dedicated to sharing reusable, high-quality agent skills.
Current release includes:

- `senior-legal-contract-reviewer-v1.2`
- Jurisdiction: PRC law (Mainland China)
- Focus: contract risk review, enforceable Plan B clauses, expected loss (EL) estimation

---

## Quick Start

1. Load [`skills/senior-legal-contract-reviewer-v1.2/SKILL.md`](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md) as your agent system instruction.
2. Provide contract text/snippets plus role, jurisdiction, amount range, and review focus.
3. Parse structured output (risk level, vulnerability, citations, Plan B clause, EL estimation).

---

## Repository Layout

```text
agent-skills-hub/
├── README.md
├── README.zh-CN.md
├── LICENSE
├── examples/
│   ├── case_a_input.md
│   └── case_a_output.json
└── skills/
    └── senior-legal-contract-reviewer-v1.2/
        ├── SKILL.md
        └── README.md
```

---

## Included Skill

### Senior Legal Contract Reviewer v1.2

- Main skill: [`SKILL.md`](./skills/senior-legal-contract-reviewer-v1.2/SKILL.md)
- Intro doc: [`README.md`](./skills/senior-legal-contract-reviewer-v1.2/README.md)
- Example input: [`examples/case_a_input.md`](./examples/case_a_input.md)
- Example output: [`examples/case_a_output.json`](./examples/case_a_output.json)

---

## Notes

- This repository provides drafting and risk-review support, not formal legal advice.
- For production use, legal outputs should be reviewed by licensed lawyers.
