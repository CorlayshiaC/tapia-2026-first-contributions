#!/usr/bin/env bash
# Creates the workshop repo, pushes these files, and opens issue #1.
# Requires the GitHub CLI, authenticated: gh auth status
#
#   bash bootstrap.sh
#
set -euo pipefail

REPO_NAME="tapia-2026-first-contributions"
OWNER="$(gh api user --jq .login)"

echo "Creating $OWNER/$REPO_NAME"

git init -q
git add -A
git -c user.name="$OWNER" commit -q -m "add workshop repo for Tapia 2026"
git branch -M main

gh repo create "$REPO_NAME" \
  --public \
  --source=. \
  --push \
  --description "Practice repository for the Tapia 2026 workshop: make your first open source contribution"

# Labels used by the workshop
gh label create "good first issue" --color 7057ff --description "Good for newcomers" --force
gh label create "tapia-2026"       --color 6a3fa0 --description "Tapia 2026 workshop" --force

# Issue #1 — every pull request closes this one
gh issue create \
  --title "Add yourself to contributors/" \
  --label "good first issue" \
  --label "tapia-2026" \
  --body "$(cat <<'BODY'
Welcome. This is the issue everyone works on during the Tapia 2026 workshop, and it stays open all session.

## What to do

Create a file at `contributors/YOUR-GITHUB-USERNAME.md` with three lines:

```markdown
# Your Name

Studying computer science at Georgia State.
I want to build a tool that helps people find research opportunities.
```

Name the file after your GitHub username, so nobody else is editing the same file as you.

## How done is defined

- A new file exists at `contributors/your-username.md`
- It is not empty
- No other files were changed
- The automated check on your pull request is green

## Steps

The seven steps are in the [README](../blob/main/README.md), with both a terminal path and a browser path. Either is fine, and both finish in about the same time.

Put `Closes #1` in your pull request description.

Stuck for more than two minutes? Flag down a TA. That is what they are there for.
BODY
)"

echo
echo "Done."
echo "Repo:  https://github.com/$OWNER/$REPO_NAME"
echo "Issue: https://github.com/$OWNER/$REPO_NAME/issues/1"
echo
echo "Two settings to check by hand in Settings → General:"
echo "  - Issues enabled, and issue creation NOT restricted"
echo "  - Allow forking enabled"
