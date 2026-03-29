> ⚠️ 数据说明
> 本目录存放用于 Agent 极限防线测试的 JSON 语料。每个 case 文件包含合同片段、期望风险召回点和期望 Plan B。
>
> ⚠️ Data Note
> This directory stores JSON benchmark cases for stress-testing the agent. Each case includes a contract snippet, expected vulnerability recall point, and expected Plan B clause.
>
> Raw contract snippets are intentionally kept in Chinese because the benchmark targets PRC contract review. English explanations are provided in this README instead of rewriting the source clauses.

## 测试数据分类

- `case_a.json`: 违约金非对称与填平陷阱
- `case_b.json`: 业务流程沉默真空层
- `case_c.json`: 核心资产所有权混同
- `case_d.json`: 法定代表人越权担保混同
- `case_e.json`: 不可抗力滥用与法定解除权排斥
- `case_f.json`: 数据合规越界授权
- `case_g.json` - `case_t.json`: 扩展样本，覆盖管辖权、税费、抵销、竞业限制、定金等高频风险

## English Coverage Summary

- `case_a.json`: asymmetric liquidated damages and compensation cap trap
- `case_b.json`: silent acceptance and payment-condition vacuum
- `case_c.json`: mixed ownership of core IP assets
- `case_d.json`: ultra vires guarantee and authority confusion
- `case_e.json`: force majeure abuse and exclusion of statutory termination rights
- `case_f.json`: overbroad data compliance authorization
- `case_g.json` - `case_t.json`: expanded samples covering jurisdiction, tax, set-off, non-compete, deposits, and other high-frequency PRC contract risks
