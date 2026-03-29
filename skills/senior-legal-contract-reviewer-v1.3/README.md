# Senior Legal Contract Reviewer v1.3 Skill

<p align="center">
  <a href="../README.md"><img src="https://img.shields.io/badge/Project-Contract%20Reviewer%20Agent-EA4AAA" alt="Project"></a>
  <img src="https://img.shields.io/badge/Skill-v1.3-blue" alt="Skill Version">
  <img src="https://img.shields.io/badge/Jurisdiction-PRC%20Law-orange" alt="Jurisdiction">
  <img src="https://img.shields.io/badge/Language-ZH%20%7C%20EN-success" alt="Language">
</p>

> 中文：这是一个面向中国大陆商事合同审查场景的单体 Skill（v1.3），强调先问交易背景、再改条款，并为每项风险给出主方案与备选方案。  
> English: A single-agent legal contract review skill (v1.3) for PRC contracts, with context-first questioning and dual-track mitigation options (Plan B + Plan C) per risk.

## TL;DR

- `SKILL.md` is production-ready for agent prompting.
- Works best when user role, business objective, red lines, and contract amount are provided.
- Outputs actionable replacement clauses and fallback options, not just risk warnings.

---

## 中文介绍

### 核心能力

- 合同预读后的苏格拉底式背景访谈：先问清交易目标、底线、可交换条件和 BATNA。
- 结构完整性扫描：主体、内容、交易方式、争议处理四模块。
- 三重交叉审查：约定 vs 法定、现实 vs 理想、条款 vs 条款。
- Plan B + Plan C：每项风险给主方案、备选方案、风险残留与让步代价。
- 风险量化：按 `EL = 概率 × 损失中位数` 输出财务视角风险。
- 法条防幻觉：低置信度自动降级，禁止编造法条编号。

### 快速使用

1. 加载 `SKILL.md` 作为 system prompt。
2. 输入合同文本/条款片段。
3. 先回答 Skill 基于合同内容发起的背景访谈问题。
4. 再获取结构化输出并进入人工复核。

### 输入建议

- 合同片段或全文。
- 你方角色（甲方/乙方/买方/卖方）。
- 本次交易目标、红线、可交换条件、BATNA。
- 合同金额区间（用于 EL 估算）。
- 重点关注（如付款、IP、违约、争议解决）。

### 输出结果

- 风险识别（`identified_vulnerability`）
- 主方案与备选方案（`defense_plan_b` / `fallback_plan_c`）
- 风险等级（`risk_level`）
- 风险量化（`expected_loss_estimation`）
- 法律依据与置信度降级提示（如适用）

---

## English Overview

### What It Does

- Starts with contract-aware Socratic questioning to clarify business context.
- Runs a 4-block structural contract integrity check.
- Performs 3-pass diagnostics (legal validity, execution feasibility, internal consistency).
- Produces enforceable Plan B clauses plus fallback Plan C options.
- Quantifies risk with expected loss (`EL = probability × median loss`).
- Applies anti-hallucination citation protocol with confidence downgrade.

### Quick Start

1. Use `SKILL.md` as the system instruction.
2. Provide contract text or clause snippets.
3. Answer the context questions raised from the contract.
4. Review the structured output and escalate high-risk items for human legal review.

### Recommended Inputs

- Full contract or key clause excerpts.
- Party position (buyer/seller/Party A/Party B).
- Business objective, red lines, tradeables, and BATNA.
- Contract amount or range.
- Priority focus (payment, IP, default, dispute resolution, etc.).

### Expected Outputs

- `identified_vulnerability`
- `defense_plan_b`
- `fallback_plan_c`
- `risk_level`
- `expected_loss_estimation`
- `legal_citations` + `confidence_degrade` where needed

---

## Directory

```text
skills/senior-legal-contract-reviewer-v1.3/
├── README.md
└── SKILL.md
```

## File Reference

- Main skill file: [SKILL.md](./SKILL.md)

## Notes

- This skill output is for risk control and drafting support, not formal legal opinion.
- For production/legal use, always add licensed lawyer review.
