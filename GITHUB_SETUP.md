# GitHub Setup Guide

Follow these steps to push your OOD templates repository to GitHub so you can sync between computers.

## Prerequisites

- Git installed on your computer ✅ (Already done!)
- GitHub account (create one at https://github.com if you don't have one)

---

## Step 1: Create GitHub Repository

### Option A: Using GitHub Website (Recommended for beginners)

1. Go to https://github.com
2. Click the **"+"** icon in the top right
3. Select **"New repository"**
4. Fill in the details:
   - **Repository name**: `react-ood-templates` (or your preferred name)
   - **Description**: "React OOD templates, models, and diagrams for project planning"
   - **Visibility**: 
     - ✅ **Public** - Anyone can see (recommended for portfolio)
     - ⬜ **Private** - Only you can see
   - **Important**: Do NOT check these boxes:
     - ⬜ Add a README file (you already have one)
     - ⬜ Add .gitignore (you already have one)
     - ⬜ Choose a license
5. Click **"Create repository"**

GitHub will show you a page with setup instructions. You'll use the commands for **"push an existing repository from the command line"**.

### Option B: Using GitHub CLI (Advanced)

If you have GitHub CLI installed:

```powershell
gh repo create react-ood-templates --public --source=. --remote=origin --push
```

---

## Step 2: Stage Your Files

In VS Code terminal (or PowerShell in this folder):

```powershell
git add .
```

Check what will be committed:

```powershell
git status
```

You should see files like:
- README.md
- USAGE_GUIDE.md
- CUSTOMIZATION_GUIDE.md
- models/
- schemas/
- diagrams/
- templates/
- docs/

---

## Step 3: Create Initial Commit

```powershell
git commit -m "Initial commit: React OOD templates and architecture"
```

---

## Step 4: Connect to GitHub

Replace `YOUR_USERNAME` with your actual GitHub username:

```powershell
git remote add origin https://github.com/YOUR_USERNAME/react-ood-templates.git
```

**Example:**
```powershell
git remote add origin https://github.com/alexf/react-ood-templates.git
```

Verify the remote was added:

```powershell
git remote -v
```

---

## Step 5: Set Default Branch to Main

```powershell
git branch -M main
```

---

## Step 6: Push to GitHub

First time push (sets up tracking):

```powershell
git push -u origin main
```

You may be prompted to authenticate:
- Enter your GitHub username
- For password, use a **Personal Access Token** (not your account password)

### Creating a Personal Access Token

If you don't have a token:

1. Go to https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Give it a name: "Git Push Access"
4. Select scopes:
   - ✅ **repo** (Full control of private repositories)
5. Click **"Generate token"**
6. **Copy the token immediately** (you won't see it again!)
7. Use this token as your password when pushing

### Alternative: GitHub Desktop

If command line authentication is troublesome:
1. Download GitHub Desktop: https://desktop.github.com
2. Sign in with your GitHub account
3. Add this repository
4. Push using the GUI

---

## Step 7: Verify on GitHub

1. Go to https://github.com/YOUR_USERNAME/react-ood-templates
2. You should see all your files!
3. GitHub will automatically render:
   - ✅ README.md on the main page
   - ✅ Mermaid diagrams in the diagram files

---

## Daily Workflow

After the initial setup, syncing is easy:

### Before Starting Work

```powershell
# Pull latest changes from GitHub
git pull
```

### After Making Changes

```powershell
# Check what changed
git status

# Stage all changes
git add .

# Commit with a message
git commit -m "Updated ProductPage component architecture"

# Push to GitHub
git push
```

---

## On Your Second Computer

### First Time Setup

1. Open terminal/PowerShell
2. Navigate to where you want the repo:
   ```powershell
   cd C:\Users\YourName\Desktop
   ```
3. Clone the repository:
   ```powershell
   git clone https://github.com/YOUR_USERNAME/react-ood-templates.git
   ```
4. Enter the folder:
   ```powershell
   cd react-ood-templates
   ```

### Daily Use

Same workflow:
- `git pull` before working
- `git add . && git commit -m "message" && git push` after changes

---

## Common Commands Reference

| Command | What it does |
|---------|-------------|
| `git status` | Show what changed |
| `git add .` | Stage all changes |
| `git commit -m "message"` | Save changes locally |
| `git push` | Upload to GitHub |
| `git pull` | Download from GitHub |
| `git log --oneline` | View commit history |
| `git diff` | Show detailed changes |

---

## Troubleshooting

### "remote origin already exists"

If you get this error:

```powershell
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/react-ood-templates.git
```

### "Authentication failed"

- Make sure you're using a Personal Access Token, not your password
- Regenerate token if needed: https://github.com/settings/tokens

### "Nothing to commit"

You haven't made changes. Check with `git status`.

### "Push rejected"

Someone (or you on another computer) pushed changes:

```powershell
git pull
# Resolve any conflicts if necessary
git push
```

### Need to undo last commit (before push)

```powershell
git reset --soft HEAD~1
```

---

## Next Steps

1. ✅ Repository created on GitHub
2. ⬜ Clone on second computer (when ready)
3. ⬜ Customize for your project
4. ⬜ Keep syncing as you work

---

## Pro Tips

### 1. Commit Often

Don't wait until end of day. Commit after each logical change:
- ✅ "Added TodoList component model"
- ✅ "Updated component hierarchy diagram"
- ❌ "Bunch of changes" (too vague)

### 2. Write Good Commit Messages

```powershell
# Good
git commit -m "Added authentication context to state-management.json"

# Bad
git commit -m "updates"
```

### 3. Pull Before You Start

Always `git pull` before working to avoid conflicts.

### 4. Use .gitignore

Already set up! Prevents committing:
- OS files (.DS_Store)
- Editor configs (.vscode)
- Personal notes

### 5. Branch for Experiments (Advanced)

Try new ideas without affecting main:

```powershell
# Create and switch to new branch
git checkout -b experiment-feature

# Make changes, commit

# Switch back to main
git checkout main
```

---

## Quick Setup Script

Save this as `setup-github.ps1`:

```powershell
# GitHub Setup Script
# Replace YOUR_USERNAME and REPO_NAME

$username = Read-Host "Enter your GitHub username"
$repoName = Read-Host "Enter repository name (e.g., react-ood-templates)"

Write-Host "`nSetting up Git repository...`n" -ForegroundColor Green

git add .
git commit -m "Initial commit: React OOD templates and architecture"
git remote add origin "https://github.com/$username/$repoName.git"
git branch -M main
git push -u origin main

Write-Host "`nDone! Check your repo at: https://github.com/$username/$repoName`n" -ForegroundColor Green
```

Run with:
```powershell
./setup-github.ps1
```

---

## Visual Guide

```
┌─────────────────┐
│ Your Computer 1 │
│  (Make changes) │
└────────┬────────┘
         │
         │ git push
         ▼
┌─────────────────┐
│     GitHub      │
│  (Cloud storage)│
└────────┬────────┘
         │
         │ git pull
         ▼
┌─────────────────┐
│ Your Computer 2 │
│  (Get changes)  │
└─────────────────┘
```

---

Ready to push? Let's do it! 🚀
