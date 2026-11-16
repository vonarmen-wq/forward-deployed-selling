# Deal Record

Maintained by the seller or synced from CRM. Required by `/fds:score`, `/fds:velocity`, `/fds:coach`, `/fds:disqualify`, `/fds:converge`. The agent never invents a field it does not have; a missing field is listed under `unknown` and excluded from averages per `canon.md`.

```
deal:
  account:
  icp:                  ICP Record name
  segment:              SMB | Mid-market | Enterprise | Strategic
  acv_estimate:         labeled
  stakeholders:         [ {name, title, function: U|B|S|E, engaged: yes|no, last_touch: date} ]
  movement:             reference to the current Movement Diagnosis
  phases:               [ {phase, planned_days [design target], started, ended|null} ]
  wait_states:          [ {what, owner, opened, age_days} ]
  integration_points:   [ named systems the deployment must connect to ]   3 or more is the convergence "implementation risk" threshold
  velocity_inputs:      # the six canon indicators; null when unknown
    active_days:        count in the current phase
    elapsed_days:
    open_wait_states:   count (derivable from wait_states)
    internal_response_hours:  median, seller-side
    parallel_coverage_pct:    share of required stakeholders engaged
    phase_transition_days:    last transition
    cycle_benchmark_days:     from canon band
  interactions:         [ {date, channel, who, summary, outcome} ]   last 5 or last 30 days, whichever is more
  artifacts_shipped:    [ {date, type, version, window_W, response: none|brief|partial|substantive} ]
  next_signal_event:    YYYY-MM-DD and what it is (earnings, planning, board, filing), or null
  competitive:          named alternatives incl. build-internal, labeled
  unknown:              fields the seller could not fill
```
