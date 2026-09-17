# Tapia 2026: First Contributions

A practice repository for the workshop **Making Your First Open Source Contribution**, Tapia 2026, Friday September 18.

Your task is to add one file with your name on it and open a pull request. It takes about fifteen minutes, and at the end you'll have a real contribution on your GitHub profile.

## The task

Create a file at `contributors/YOUR-GITHUB-USERNAME.md` containing three lines:

```markdown
# Your Name

Studying computer science at Georgia State.
I want to build a tool that helps people find research opportunities.
```

Because the file is named after you, nobody else is editing it. Everyone in the room can do this at the same moment without anything colliding.

## The seven steps

**1. Fork this repository.** Button at the top right. It makes a copy under your own username.

**2. Get the code.** Either clone it:

```bash
git clone https://github.com/YOUR-USERNAME/tapia-2026-first-contributions.git
cd tapia-2026-first-contributions
```

Or stay in the browser: on your fork, press **Add file → Create new file** (top right). That opens the editor you'll use for every step after this, and you'll finish at the same time.

**3. Make a branch.**

```bash
git switch -c add-your-username
```

**4. Add your file** at `contributors/your-username.md`.

**5. Commit it.**

```bash
git add -A
git commit -m "add contributor file for your-username"
```

**6. Push to your fork.**

```bash
git push -u origin add-your-username
```

**7. Open the pull request.** GitHub shows a green button on your fork. Write a title, a sentence about what you changed, and `Part of #1`.

> **Write `Part of #1`, not `Closes #1`.** Everyone in the room shares issue #1. GitHub automatically closes an issue when a pull request that says `Closes #1` (or `Fixes #1` / `Resolves #1`) is merged — so the first merge would close #1 for everyone still working. `Part of #1` (or `Re #1`) links your pull request to the issue without closing it.

## If something breaks

**`403` or `Permission denied` on push.** You cloned the original instead of your fork. Check with `git remote -v`, then:

```bash
git remote set-url origin https://github.com/YOUR-USERNAME/tapia-2026-first-contributions.git
```

**It keeps asking for a password.** GitHub stopped accepting account passwords. Run `gh auth login` and choose the browser option.

**You committed to `main`.** Not a problem. `git switch -c add-your-username` brings the commits with you, then push.

**Your commit doesn't show on your profile.** Your Git email doesn't match your GitHub account. Fix it with `git config --global user.email "your-github-email"`, then `git commit --amend --reset-author --no-edit` and push.

**A red X on your pull request.** A check ran and something failed. Click Details, read the last line, push a fix to the same branch. The pull request updates itself.

## After this

Take a real one. [ProbeAgent](https://github.com/sumamovva/probeagent) is an open source tool for security testing AI agents, and its issues labelled `good first issue` are genuinely first-issue sized.

Also worth bookmarking: [goodfirstissue.dev](https://goodfirstissue.dev), [up-for-grabs.net](https://up-for-grabs.net).
