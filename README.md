# Fleet

Global instructions and reusable skills shared across Codex and Claude.

## Setup

Clone the repository, then run:

```sh
./link.sh
```

This links the core instruction files into `~/.codex`, `~/.agents`, and
`~/.claude`. It links `skills/universal` into `~/.agents/skills` and each
universal skill into `~/.claude/skills`. Existing destinations are only replaced
after confirmation.

Edit the files in this repository; changes are immediately available through
the symlinks.
