#!/bin/bash
# Install WinLoop git hooks into .git/hooks/.
# Run this once after cloning: bash .claude/scripts/setup-hooks.sh

set -e
REPO_ROOT="$(git rev-parse --show-toplevel)"
HOOKS_SRC="$REPO_ROOT/.claude/scripts/hooks"
HOOKS_DEST="$REPO_ROOT/.git/hooks"

cp "$HOOKS_SRC/pre-commit" "$HOOKS_DEST/pre-commit"
chmod +x "$HOOKS_DEST/pre-commit"

echo "✅ WinLoop pre-commit hook installed."
echo "   The hook blocks real names, emails, photos, and customer data from being committed."
