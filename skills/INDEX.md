# Skill Catalog / Skill 分类目录

This file lists **active** skills under `skills/`. Descriptions are derived from each skill’s `SKILL.md` and reference files.  
本目录只列出 `skills/` 下**当前有效**的 Skill；介绍依据对应 `SKILL.md` 与参考文件整理。

---

## Food / 食品与消费安全

Category intro: [food/README.md](./food/README.md)

### China Food Ingredient & Brand Safety Evaluator  
### 中国大陆食品成分与品牌安全评估

| | |
| --- | --- |
| **Path / 路径** | [`food/china-food-ingredient-brand-safety-evaluator/`](./food/china-food-ingredient-brand-safety-evaluator/) |
| **Main / 主文件** | [SKILL.md](./food/china-food-ingredient-brand-safety-evaluator/SKILL.md) |
| **Intro / 介绍** | [README.md](./food/china-food-ingredient-brand-safety-evaluator/README.md) |
| **References / 参考** | [evidence-and-regulation.md](./food/china-food-ingredient-brand-safety-evaluator/references/evidence-and-regulation.md) · [ingredients-and-nutrition.md](./food/china-food-ingredient-brand-safety-evaluator/references/ingredients-and-nutrition.md) · [brand-and-report.md](./food/china-food-ingredient-brand-safety-evaluator/references/brand-and-report.md) |
| **Status / 状态** | Active / 当前有效 |

**Purpose / 用途**

Evidence-oriented screening of packaged foods sold in Mainland China: labels, ingredients, nutrition, exposure, current regulatory records, and brand/factory history.  
面向中国大陆销售的预包装食品，基于证据筛查标签、配料、营养、暴露、当前监管记录及品牌/工厂记录。

**Inputs / 输入**

Packaging photos or text, ingredient list, nutrition panel, producer, SC number, dates, batch, barcode, and intended frequency when available.  
包装照片或文字、配料表、营养成分表、生产商、SC 编号、日期、批次、条形码及食用频率（如有）。

**Outputs / 输出**

Product identity, current-batch screening, key ingredient & exposure analysis, brand/factory records, four-tier risk rating, and purchase suggestion.  
产品识别、当前批次筛查、重点成分与暴露分析、品牌/工厂记录、四档风险结论与购买建议。

**Freshness / 时效**

Record source dates, actual retrieval time, URL, and verification status. Purchase or consumption decisions require live checks.  
记录来源日期、实际检索时间、链接与核验状态；购买或食用决策必须核查当前信息。

**Boundary / 边界**

Does not replace laboratory testing, medical diagnosis, legal advice, food-safety certification, or a regulator decision.  
不替代实验室检测、医疗诊断、法律意见、食品安全认证或监管机关结论。

---

## Tech / 技术与工程

Category intro: [tech/README.md](./tech/README.md)

### AI Tech Evaluator  
### AI 技术可行性评估专家

| | |
| --- | --- |
| **Path / 路径** | [`tech/ai-tech-evaluator/`](./tech/ai-tech-evaluator/) |
| **Main / 主文件** | [SKILL.md](./tech/ai-tech-evaluator/SKILL.md) |
| **Intro / 介绍** | [README.md](./tech/ai-tech-evaluator/README.md) |
| **References / 参考** | [report-and-ops.md](./tech/ai-tech-evaluator/references/report-and-ops.md) · [prompt-lite.md](./tech/ai-tech-evaluator/references/prompt-lite.md) · [gemini-gem.md](./tech/ai-tech-evaluator/references/gemini-gem.md) |
| **Status / 状态** | Active / 当前有效 |
| **Origin / 来源** | Optimized from [ai-learning-skills](https://github.com/evan66547/ai-learning-skills) / 自该仓库优化迁入 |

**Purpose / 用途**

Judge whether an AI product or workflow is feasible **as of the evaluation day**: live research, five-dimension diagnosis, tiered implementation plans (or red-light fallbacks), and executable tutorials.  
判断 AI 产品/工作流在**评估当日**是否可行：实时检索、五维诊断、梯次落地方案（或不可行时的过渡路径）与可执行教程。

**Inputs / 输入**

Goal in plain language; optional: industry, skill level, deadline, budget band, privacy constraints, existing stack, success metrics.  
目标描述；可选：行业、技术水平、截止时间、预算量级、隐私约束、现有技术栈、成功标准。

**Outputs / 输出**

Executive summary, 5D matrix, three maturity-ordered options or blockers + transitions, architecture sketch, step-by-step tutorial, source labels.  
执行摘要、五维矩阵、三档方案或阻塞点+过渡路径、架构说明、分步教程、来源标注。

**Freshness / 时效**

Feasibility and stack recommendations require live search; conclusions bind to the evaluation date.  
可行性与技术栈推荐须实时检索；结论绑定评估日期。

**Boundary / 边界**

Not investment, legal, compliance, or procurement advice; must not invent APIs, repos, or benchmarks.  
不构成投资、法律、合规或采购建议；禁止虚构 API、仓库或基准数据。

### Codex agy
### Ghostty 可见 Antigravity CLI 工作流

| | |
| --- | --- |
| **Path / 路径** | [`tech/codex-agy/`](./tech/codex-agy/) |
| **Main / 主文件** | [SKILL.md](./tech/codex-agy/SKILL.md) |
| **Intro / 介绍** | [README.md](./tech/codex-agy/README.md) |
| **Status / 状态** | Active / 当前有效 |

**Purpose / 用途**

Visible, safe execution of the local Antigravity CLI (`agy`) in Ghostty, with input-method-safe prompt injection and independent Git/test verification.
在 Ghostty 中可见、安全地运行本机 Antigravity CLI（`agy`），规避中文输入法干扰，并独立核验 Git、差异和测试结果。

**Inputs / 输入**

Work directory, approved agy options, non-sensitive task prompt, acceptance criteria, and prohibited actions.
工作目录、已批准的 agy 参数、不含敏感信息的任务提示词、验收标准和禁止动作。

**Outputs / 输出**

Ghostty-visible execution plus stage reports grounded in process state, Git status, diffs, and tests.
Ghostty 中可见的执行过程，以及基于进程、Git 状态、差异和测试的阶段核验报告。

**Boundary / 边界**

Does not grant push, deployment, production-database, environment-file, or permission-bypass authority.
不授予推送、部署、生产库写入、环境文件修改或绕过权限的授权。

---

## Legal / 法律工作流

Category intro: [legal/README.md](./legal/README.md)

### Demand Letter Generator  
### 中文催款函生成与归档

| | |
| --- | --- |
| **Path / 路径** | [`legal/demand-letter-generator/`](./legal/demand-letter-generator/) |
| **Main / 主文件** | [SKILL.md](./legal/demand-letter-generator/SKILL.md) |
| **Intro / 介绍** | [README.md](./legal/demand-letter-generator/README.md) |
| **References / 参考** | [evidence-and-amounts.md](./legal/demand-letter-generator/references/evidence-and-amounts.md) · [docx-and-archive.md](./legal/demand-letter-generator/references/docx-and-archive.md) |
| **Status / 状态** | Active / 当前有效 |
| **Origin / 来源** | Optimized from [evan-agent-skills](https://github.com/evan66547/evan-agent-skills) / 自该仓库优化迁入 |

**Purpose / 用途**

Draft, update, check, and archive Chinese 催款函 from local contracts, invoices, screenshots, and template DOCX—with confirmation gates for amounts and entities.  
根据本地合同、发票、截图与模板 DOCX 起草、修改、检查并归档中文催款函，对金额与主体实行确认闸门。

**Inputs / 输入**

Local case folder: contracts, invoices, payment proofs, screenshots, reference DOCX; user confirmations for principal, letter date, sender, collection account when needed.  
本地案卷：合同、发票、付款凭证、截图、参考 DOCX；必要时用户确认本金、函件日期、发函主体、收款账户。

**Outputs / 输出**

`催款函-债务人名称.docx`, optional `依据/` archive, case folder rename pattern, verification summary.  
终稿 DOCX、可选 `依据/` 归档、案卷命名、核验摘要。

**Freshness / 时效**

LPR-based penalty only after user choice and live official rate lookup.  
仅在用户选定且实时查询官方 LPR 后才可按 LPR 计违约金。

**Boundary / 边界**

Not licensed legal advice, formal lawyer letterhead, or process service; no default private archive path; do not edit source evidence.  
不构成执业律师意见、正式律师函要求或送达程序；无默认私有归档路径；不改动源证据。

---

## Adding a skill / 新增 Skill

1. Place the skill at `skills/<category>/<skill-name>/`.  
   使用路径 `skills/<分类>/<skill名称>/`。
2. Include `SKILL.md` + human-facing `README.md` (and optional `references/`).  
   至少包含 `SKILL.md` 与面向人的 `README.md`（可选 `references/`）。
3. Update this index, the category README, and both root READMEs.  
   同步更新本目录、分类 README，以及根目录中英文 README。
4. Catalog entries may only describe capabilities already present in the skill files.  
   目录介绍只能描述对应 Skill 文件中已有的能力、输入、输出与边界。

Full checklist: [CONTRIBUTING.md](../CONTRIBUTING.md)
