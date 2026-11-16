# Connectors

How the `account-context` agent fills the Deal Record and Context Stack from the seller's own systems. Each file maps one source's objects and fields to FDS record fields. The agent reads the mapping for every connector present in the session, pulls only the listed fields, and labels each row `KNOWN [connector:object:id]`.

| Source | File | Fills |
| --- | --- | --- |
| Salesforce | `salesforce.md` | Deal Record (all fields), Context Stack · interaction, stakeholder |
| HubSpot | `hubspot.md` | Deal Record (all fields), Context Stack · interaction, stakeholder |
| Gmail / Outlook | `mail.md` | Context Stack · interaction, engagement_context on the Stakeholder Profile |
| Google / Outlook Calendar | `calendar.md` | Context Stack · interaction (meetings), timing |
| Google Drive / SharePoint | `files.md` | Business Record · proof, Context Stack · company (prior decks, notes) |

No connector present → the agent says so, and the fields stay `unknown`. The agent never substitutes web data for an Interaction-layer field; prior contact is private data and comes only from these sources or the seller.

## Adding a source

Copy `salesforce.md`, keep the three sections (Objects, Field map, Query rules), and name the MCP tool calls the agent should make. The mapping is prose a model reads, not code; keep it under 80 lines.

## Privacy

Connectors run with the seller's own credentials and read only the account named in the command. The agent writes the pulled rows to project memory under `fds/<account>/`, which is local to the seller's project. Nothing pulled from a connector is sent to the public web or cited to the prospect; it informs the Interaction and Timing layers only.
