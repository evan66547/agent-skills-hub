# Demand Letter Generator

**中文催款函生成与归档**

| Field / 字段 | Value / 内容 |
| --- | --- |
| Category / 分类 | Legal · 法律工作流 |
| Status / 状态 | Active · 当前有效 |
| Path / 路径 | `skills/legal/demand-letter-generator/` |
| Main instruction / 主指令 | [`SKILL.md`](./SKILL.md) |
| Source repo / 来源 | 自 [evan-agent-skills](https://github.com/evan66547/evan-agent-skills) 优化迁入 |
| Version lineage / 版本谱系 | 对齐上游 v1.1.0 能力（数据确认闸门 + 公开版归档确认） |

---

## English

### TL;DR

A workflow skill for **Chinese demand letters (催款函)** from local contracts, invoices, screenshots, payment records, and a reference DOCX. It enforces an **evidence / user / inference confirmation gate**, calculates principal and contract-based liquidated damages with visible formulas, preserves Word formatting, archives exhibits into `依据/`, and renames case folders—without assuming a private archive path.

### What it does

- Modes: generate, update, check, rename, archive, full workflow
- Extracts parties, amounts, payment and penalty clauses from local files
- Blocks writing unconfirmed or inferred figures into DOCX until the user confirms
- Computes outstanding principal and penalties; optional LPR path only after user choice + live official rates
- Copies template DOCX formatting (font, bold, alignment, phone) when a reference exists
- Archives support files under `依据/` with typed names; renames case folder `YYYYMMDD债权人缩写-债务人-催款函`
- Asks before moving the whole case folder (no default personal path in this hub copy)

### Recommended inputs

A working directory containing some of: contract PDF/DOCX, invoice, payment proof, screenshots, previous demand letter or blank template DOCX; plus user confirmations for principal, letter date, sending entity, and collection account when not fully proven.

### Guardrails

Not a substitute for licensed legal advice, formal lawyer letterhead requirements, court filings, or process service. Do not invent delivery facts, accounts, or penalty bases. Do not edit source evidence. High daily rates should note judicial adjustment risk. Do not commit real client materials, accounts, or phone numbers into git.

### Privacy

This skill operates on **local case folders**. The published skill contains **no** client contracts, invoices, or private absolute paths.

---

## 中文

### 一句话介绍

基于**本地**合同、发票、截图、付款记录与参考 DOCX，生成/修改/检查中文**催款函**：强制证据·用户·推算三类确认闸门，计算欠款与违约金并展示公式，尽量保留 Word 版式，归档至 `依据/`，规范案卷命名；**移动整案前必须询问目标路径**。

### 适用场景

- 新建或改版催款函 DOCX  
- 核对主体、金额、违约金与格式  
- 计算合同违约金或用户确认后的 LPR 暂计  
- 证据归入 `依据/`、案卷文件夹命名与（确认后）归档移动  

### 建议输入

工作目录中尽量具备：合同、发票、付款凭证、相关截图、既往催款函或空白模板；本金、函件日期、发函主体、收款账户等在材料不足时由用户确认。

### 风险边界

- 不替代执业律师意见、正式律师函抬头要求、立案文书或送达程序  
- 不得捏造交付事实、账户或无依据的违约金  
- 不得改动源证据文件  
- 日违约金偏高时提示调减风险  
- 勿将真实客户材料、账号、电话提交到公开仓库  

### 使用示例

```text
使用 demand-letter-generator。根据当前文件夹中的合同、发票、截图与参考催款函 DOCX 生成催款函。
先做数据确认闸门；按合同计算欠款与违约金；保留模板格式与电话；
终稿命名为「催款函-债务人名称.docx」；核验后归档依据并重命名案卷文件夹。
```

---

## Files / 文件

| File | Role / 作用 |
| --- | --- |
| [`SKILL.md`](./SKILL.md) | Main agent instruction / 主指令 |
| [`references/evidence-and-amounts.md`](./references/evidence-and-amounts.md) | Evidence fields, amounts, LPR, day count / 证据与金额 |
| [`references/docx-and-archive.md`](./references/docx-and-archive.md) | DOCX, `依据/`, case folder move / 格式与归档 |
| [`agents/openai.yaml`](./agents/openai.yaml) | Optional OpenAI UI metadata / 可选界面元数据 |
| [`CHANGELOG.md`](./CHANGELOG.md) | Version notes / 变更记录 |

## License / 许可

Released under this repository’s [MIT License](../../../LICENSE). Upstream [evan-agent-skills](https://github.com/evan66547/evan-agent-skills) may use different skill-level terms; this hub copy follows the hub license.  
遵循本仓库 [MIT 许可证](../../../LICENSE)。上游仓库可能另有技能级条款；迁入本 hub 的副本以本仓库许可证为准。
