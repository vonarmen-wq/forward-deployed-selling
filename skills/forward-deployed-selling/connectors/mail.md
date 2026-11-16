# Mail (Gmail, Outlook) → FDS

## Scope
Threads where any participant's address is on the account's domain, in the last 180 days. The agent reads the seller's own mailbox with the seller's credentials and reads nothing else.

## Field map

| FDS field | Mail |
| --- | --- |
| `context.interaction[]` | one row per thread: date of last message, `channel: email`, who (counterpart name and title if in signature), summary (one line, no quotes longer than a phrase), outcome (`replied` / `no reply` / `meeting set` / `declined`), `source: mail` |
| `profile.engagement_context` | per stakeholder: threads, replies, median response latency in business days → `KNOWN [mail:thread:<id>]` |
| `profile.approach.channel` | `email` if the stakeholder has replied by mail at least once; else keep the ICP default |
| `thesis.delivered_on` | the send date of the thread whose subject matches the provocation, if the seller did not record it |
| response-window learning | observed latency per delivered thesis → ledger |

## Rules
1. Summaries, never bodies. The Context Stack holds a line per thread; the mail stays in the mailbox.
2. Out-of-office and automated replies are not interactions.
3. Internal threads about the account (no counterpart on the domain) go to `situation` as `INFERRED [internal note] [medium]`, one line, not to `interaction`.
4. Red Light applies: nothing personal that appears in a signature or thread (phone, family, health) is written anywhere.
