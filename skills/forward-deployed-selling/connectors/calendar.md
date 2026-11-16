# Calendar (Google, Outlook) → FDS

## Scope
Events in the last 180 days and next 90 with any attendee on the account's domain.

## Field map

| FDS field | Calendar |
| --- | --- |
| `context.interaction[]` | past events: date, `channel: meeting`, attendees by name and function, title as summary, outcome `held` / `cancelled` / `no-show` (from response status), `source: calendar` |
| `context.timing[]` | future events with the account: date, title → `KNOWN [calendar:event:<id>]` |
| `deal.wait_states[]` | an event titled as a follow-up, proposal review or decision meeting that was cancelled and not rebooked → a wait state with the seller as owner |
| `velocity.active_to_elapsed` | days with a held meeting count as active days |

## Rules
Attendee lists are used for function mapping only; no event description text is stored. Declined invitations are an outcome, not a signal of intent.
