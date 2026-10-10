#!/bin/sh
# Links the Visa Internship skills and standards into Claude Code. Safe to rerun.
# Existing skills with the same name are left alone, never overwritten.
set -e
repo=$(cd "$(dirname "$0")" && pwd)
claude="$HOME/.claude"
mkdir -p "$claude/skills"

added=0
skipped=""
for dir in "$repo"/skills/*/; do
  name=$(basename "$dir")
  target="$claude/skills/$name"
  if [ -e "$target" ] || [ -L "$target" ]; then
    skipped="$skipped $name"
  else
    ln -s "$dir" "$target"
    added=$((added + 1))
  fi
done

ln -sfn "$repo" "$claude/visa-internship"
line="@~/.claude/visa-internship/CLAUDE.md"
touch "$claude/CLAUDE.md"
grep -qxF "$line" "$claude/CLAUDE.md" || printf '\n%s\n' "$line" >> "$claude/CLAUDE.md"

echo "Linked $added skills into $claude/skills."
[ -n "$skipped" ] && echo "Already had (left alone):$skipped"
echo "Standards load from $claude/CLAUDE.md. Restart Claude Code to pick them up."
