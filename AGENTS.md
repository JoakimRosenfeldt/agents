# Fleet

This repository stores global agent instructions and reusable skills. Read `corefiles/AGENTS.md` before editing.

## Layout

- `corefiles/AGENTS.md` is the global Codex source.
- `corefiles/CLAUDE.md` is the global Claude source.
- `skills/universal/` contains skills shared across harnesses.

## Rules

- User instructions override these defaults.
- Edit source files, not deployed copies or snapshots.
- Keep the two core files aligned unless a harness truly needs different behavior.
- Keep skill descriptions focused on trigger phrases. Put procedures in the body.
- Keep files short. Remove rules that no longer solve a real failure.
- Never commit secrets, tokens, machine identifiers, or private URLs.
- Validate changed skills before distribution.
- Do not deploy, commit, push, or modify another machine unless asked.

