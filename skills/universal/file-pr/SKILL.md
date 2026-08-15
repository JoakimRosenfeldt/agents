---
name: file-pr
description: Create a concise pull request. Use when the user asks to file, open, create, or submit a PR.
---

# File PR

1. Check whether the branch already has a PR.
2. Review the diff against the target branch and confirm it matches the user's goal.
3. Inspect recent merged PRs and Git history for title conventions.
4. Commit only in-scope changes, push the branch, and open a ready PR. Use a draft only when asked.

Use a concise title that explains why the change matters. Follow repository conventions.

Write the body in this order:

- The problem in one or two sentences.
- How the change solves it.
- Focused verification performed.
- Images or video for visual or motion changes.
- Model and harness used.

Do not lead with an implementation inventory. Keep one concern per PR. If the user also asks to monitor it, use `babysit-pr` after filing.

