# more-git Command Reference

## Core Commands

### `git undo`
```bash
git undo
```
Soft resets the last commit, preserving changes in working directory.

### `git timeline`
```bash
git timeline
```
Displays enhanced commit history with:
- Branch visualization
- Relative timestamps
- Author information
- Commit subject lines

### `git whoblame`
```bash
git whoblame <file>
```
Shows human-readable blame information including:
- Author name
- Commit hash
- Commit message
- Date

## Branch Management

### `git scratch`
```bash
git scratch
```
Creates a timestamped scratch branch:
```
scratch/YYYYMMDD-HHMMSS
```

### `git pr`
```bash
git pr
```
Creates a GitHub pull request with current branch (requires [GitHub CLI](https://cli.github.com)).

## Cleanup Utilities

### `git zap`
```bash
git zap "<pattern>"
```
Example:
```bash
git zap "*.log"
```
- Deletes all matching files
- Resets changes to matching files

### `git nuke`
```bash
git nuke
```
Resets entire repository to match remote:
1. Confirms before executing
2. Hard reset to upstream branch
3. Cleans untracked files

## Workflow Helpers

### `git standup`
```bash
git standup
```
Shows your commits since yesterday in format:
```
- Commit message (abbreviated hash)
```

### `git ignorelocal`
```bash
git ignorelocal <file>
```
Adds to local-only `.gitignore`:
1. Creates `.git/local.gitignore` if needed
2. Removes file from tracking

### `git mob`
```bash
git mob "Name <email>"
```
Prepares co-author trailer for commits:
```text
Co-authored-by: Name <email>
```

## Help

### `git more-help`
```bash
git more-help
```
Displays summary of all available commands.

---
