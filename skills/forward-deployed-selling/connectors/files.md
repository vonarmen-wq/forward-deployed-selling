# Files (Google Drive, SharePoint, local folder) → FDS

## Scope
Files whose name or content mentions the account, or the seller's product line, that the seller points at or that sit under a folder named for the account.

## Field map

| FDS field | Files |
| --- | --- |
| `business.proof.wins[]`, `.references[]` | win/loss notes, case studies, reference lists → `KNOWN [drive:file:<id>]` |
| `business.commercial` | pricing sheets, rate cards |
| `business.limitations` | known-issues docs, support FAQs, lost-deal reasons |
| `context.company[]` | prior decks or account plans on this account: one line per distinct claim, `INFERRED [prior account plan, <date>] [medium]` because the seller's own earlier analysis is not a public fact |
| `context.situation[]` | call transcripts and meeting notes → one line per pressure named by the prospect, `KNOWN [drive:file:<id>]` |
| `deal.interactions[]` | a transcript dated and attributed counts as an interaction, `source: seller` |

## Rules
1. A prior deck's numbers are not evidence; they are the seller's earlier inference and are labeled as such.
2. Transcripts: paraphrase, one line per pressure, no verbatim beyond a phrase.
3. Another customer's files are never read for this account (cross-customer data is a Red Light).
