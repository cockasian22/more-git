# Contributing to more-git

We welcome contributions from developers of all skill levels. These guidelines will help you get started.

## How to Contribute

### 1. Reporting Issues
- Check if the issue already exists
- Use a clear, descriptive title
- Include:
  - OS and Git version
  - Steps to reproduce
  - Expected vs. actual behavior
  - Screenshots if applicable

### 2. Suggesting New Commands
Before proposing new commands:
1. Verify it doesn't duplicate existing Git functionality
2. Ensure it solves a common pain point
3. Keep it focused (single responsibility)

### 3. Development Setup
```bash
git clone https://github.com/cockasian22/more-git.git
cd more-git
```

### 4. Pull Requests
- Keep PRs focused on one feature/fix
- Update documentation (README.md/COMMANDS.md)
- Test changes locally:
  ```bash
  git config --file config/gitconfig.snippet alias.your-command
  ```

### 5. Code Style
- Follow existing patterns in config files
- Keep dependencies to zero
- Document new commands in:
  - `COMMANDS.md`
  - `git more-help` output

## Command Standards
New commands should:
✅ Work on Linux, macOS, and Windows (WSL)    
✅ Include confirmation for destructive actions  
✅ Maintain backward compatibility  

## First-Time Contributors
Look for `good first issue` labels.
