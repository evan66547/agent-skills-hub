# AI Tech Evaluator

**AI 技术可行性评估专家**

| Field / 字段 | Value / 内容 |
| --- | --- |
| Category / 分类 | Tech · 技术与工程 |
| Status / 状态 | Active · 当前有效 |
| Path / 路径 | `skills/tech/ai-tech-evaluator/` |
| Main instruction / 主指令 | [`SKILL.md`](./SKILL.md) |
| Source repo / 来源 | 自 [ai-learning-skills](https://github.com/evan66547/ai-learning-skills) 优化迁入 |
| Data freshness / 时效 | Live search required for feasibility claims · 可行性结论须实时检索 |

---

## English

### TL;DR

An evidence-oriented skill that answers: **Can today’s AI stack do this, how, at what cost, and how long to ship?** It forces live research, a five-dimension diagnosis, maturity-ordered options (or honest red lights + fallbacks), and step-by-step implementation guidance—not vibes-based “AI can do anything.”

### What it does

- Clarifies intent, skills, budget, timeline, data sensitivity, and existing stack before judging
- Runs multi-angle live search to calibrate the **evaluation-day** baseline
- Scores maturity, cost, risk, delivery time, and ops complexity
- Outputs three maturity-ordered paths **or** blockers + transition plans
- Produces executable tutorials with checkpoints; optional Lite tone for non-engineers
- Labels source confidence and tech decay (stable / fast-moving)

### Recommended inputs

Describe the product or workflow goal in plain language. Helpful extras: industry, technical level, deadline, monthly budget band, privacy constraints, existing tools (language, cloud, model accounts), success metrics (latency, accuracy, language).

### Guardrails

Not investment, legal, compliance, or procurement advice. Does not guarantee future model capability. Must not invent repos, APIs, benchmarks, or versions. Offline mode must be labeled. China-reachable paths preferred when the user is in Mainland China; international-only options need alternatives called out.

### Variants

| Audience | How |
| --- | --- |
| Engineers / architects | Load `SKILL.md` |
| Non-technical operators | Follow [`references/prompt-lite.md`](./references/prompt-lite.md) |
| Gemini Gem | [`references/gemini-gem.md`](./references/gemini-gem.md) |

---

## 中文

### 一句话介绍

回答「**今天的 AI 技术能不能做这件事、怎么做、花多少、多久能上线**」：强制实时检索，五维诊断，按成熟度给方案（或诚实说明不可行与过渡路径），并输出可执行教程——而不是空泛的「AI 啥都行」。

### 适用场景

- 新产品 / Agent / RAG / 自动化是否值得现在做  
- 开源自建 vs 商业 API vs 低码平台怎么选  
- 需要成本区间、周期、人力画像与坑点  
- 非技术同学只想先听懂「能不能、怎么落地」  

### 主要能力

- Phase -1 澄清真实意图与约束（避免 XY 问题）  
- Phase 0 多角度联网校准评估当日技术基线  
- Phase 1 技术成熟度 / 成本 / 风险 / 周期 / 运维 五维表  
- Phase 2 稳健·均衡·前沿三档，或红灯 + 人机协同 / 降级 MVP  
- Phase 3 分步教程与验证检查点  
- 来源标记与组件时效标签；支持 Lite 语气与 Gemini Gem 配置  

### 建议输入

用大白话描述目标；尽量补充：行业、自身技术程度、上线时间、月预算量级、数据是否敏感、已有环境与成功标准（延迟、准确率、中英文等）。

### 风险边界

- 不构成投资、法律、合规或采购承诺  
- 不保证未来模型能力；结论绑定检索日期  
- 禁止伪造仓库、接口、基准与版本号  
- 搜索失败须标注离线评估  
- 面向中国大陆用户时优先可达路径，并标注需特殊网络方案的替代  

### 使用方式摘要

1. 将 `SKILL.md` 作为 Agent 指令加载（或按工具的 Skill 机制挂载）。  
2. 非技术场景改用 / 参照 `references/prompt-lite.md`。  
3. Gemini：按 `references/gemini-gem.md` 创建 Gem。  
4. 提问示例：「基于 500 份 PDF 合同做实时法律问答，要秒级和定位，今天能做吗？」  

---

## Files / 文件

| File | Role / 作用 |
| --- | --- |
| [`SKILL.md`](./SKILL.md) | Main agent instruction / 主指令 |
| [`references/report-and-ops.md`](./references/report-and-ops.md) | Report layout, degradation, cost & CN checklist / 报告与运行策略 |
| [`references/prompt-lite.md`](./references/prompt-lite.md) | Non-technical prompt / 非技术轻量提示词 |
| [`references/gemini-gem.md`](./references/gemini-gem.md) | Gemini Gem setup / Gemini 配置 |
| [`agents/openai.yaml`](./agents/openai.yaml) | Optional OpenAI UI metadata / 可选界面元数据 |

## License / 许可

Repository [MIT License](../../../LICENSE).  
遵循仓库 [MIT 许可证](../../../LICENSE)。
