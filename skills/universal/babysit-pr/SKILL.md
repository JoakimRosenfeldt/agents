---
name: babysit-pr
description: Monitor a pull request through review and CI. Use when the user asks to monitor, watch, follow, or babysit a PR.
---

# Babysit PR

Stay with the PR until the latest commit is green and actionable review feedback is resolved, or until the PR becomes obsolete or genuinely blocked.

1. Identify the PR, latest commit, target branch, checks, and unresolved comments.
2. Prefer native monitoring tools. Otherwise poll without repeating unchanged updates.
3. Act only on checks and comments newer than the latest push.
4. Verify every finding against the source. Fix real defects; explain and resolve false positives.
5. Separate repository failures from infrastructure flakes. Retry flakes only when useful.
6. Rebase or update from the target branch when needed. Preserve the PR's original goal.
7. Never let review feedback expand scope. Report valuable follow-up work separately.
8. Mark agent-written replies with the model and state that they are on the user's behalf.
9. Add images or video when they materially help review.
10. Ask before merging or closing unless already authorized.

If another PR makes this one obsolete, stop and report it.

