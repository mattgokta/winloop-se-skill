#!/bin/bash
# Install WinLoop git hooks and the per-user blocklist.
# Run this once after cloning: bash .claude/scripts/setup-hooks.sh

set -e
REPO_ROOT="$(git rev-parse --show-toplevel)"
HOOKS_SRC="$REPO_ROOT/.claude/scripts/hooks"

# Point git at the tracked hooks dir so the hook stays current with the repo
# (a copied hook goes stale the moment the tracked one changes).
git config core.hooksPath .claude/scripts/hooks
chmod +x "$HOOKS_SRC/pre-commit"

# Per-user blocklist: real customer/colleague names live ONLY here (gitignored).
if [ ! -f "$HOOKS_SRC/blocklist.local" ]; then
    cp "$HOOKS_SRC/blocklist.local.example" "$HOOKS_SRC/blocklist.local"
    echo "✅ WinLoop pre-commit hook installed (core.hooksPath)."
    echo ""
    echo "⚠  Created .claude/scripts/hooks/blocklist.local from the example."
    echo "   EDIT IT NOW: replace the fictional patterns with your real customer,"
    echo "   account, and colleague names. It is gitignored and never committed."
else
    echo "✅ WinLoop pre-commit hook installed (core.hooksPath). blocklist.local already present."
fi
