#!/bin/sh

set -eu

repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

link() {
	source=$1
	destination=$2
	parent=${destination%/*}

	mkdir -p "$parent"

	if [ -L "$destination" ]; then
		if [ "$(readlink "$destination")" = "$source" ]; then
			printf 'Already linked: %s\n' "$destination"
			return
		fi
	elif [ ! -e "$destination" ]; then
		ln -s "$source" "$destination"
		printf 'Linked: %s -> %s\n' "$destination" "$source"
		return
	fi

	printf '%s already exists. Replace it? [y/N] ' "$destination"
	if ! read -r answer; then
		printf '\nSkipped: %s\n' "$destination"
		return
	fi

	case $answer in
	y | Y | yes | YES | Yes) ;;
	*)
		printf 'Skipped: %s\n' "$destination"
		return
		;;
	esac

	if [ -d "$destination" ] && [ ! -L "$destination" ]; then
		rm -r "$destination"
	else
		rm "$destination"
	fi

	ln -s "$source" "$destination"
	printf 'Linked: %s -> %s\n' "$destination" "$source"
}

link "$repo_dir/corefiles/AGENTS.md" "$HOME/.codex/AGENTS.md"
link "$repo_dir/corefiles/AGENTS.md" "$HOME/.agents/AGENTS.md"
link "$repo_dir/corefiles/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
link "$repo_dir/skills/universal" "$HOME/.agents/skills/universal"

for skill_dir in "$repo_dir"/skills/universal/*; do
	[ -d "$skill_dir" ] || continue
	link "$skill_dir" "$HOME/.claude/skills/${skill_dir##*/}"
done
