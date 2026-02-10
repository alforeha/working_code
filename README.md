# React OOD Templates & Visualization

Design documentation and templates for planning and building Vite + React projects.

## 📚 Documentation

- **[🚀 QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - Essential commands and patterns (start here!)
- **[📘 GITHUB_SETUP.md](GITHUB_SETUP.md)** - Step-by-step GitHub setup and sync guide
- **[📖 USAGE_GUIDE.md](USAGE_GUIDE.md)** - Complete workflow guide with examples
- **[🎨 CUSTOMIZATION_GUIDE.md](CUSTOMIZATION_GUIDE.md)** - How to customize models and diagrams

## 📁 Structure

- `/models` - JSON definitions of components, services, and data structures
- `/schemas` - JSON schemas for props validation and API contracts
- `/diagrams` - Mermaid diagrams for architecture visualization
- `/templates` - Boilerplate React components and patterns to copy
- `/docs` - Architecture decisions and design notes
- `/scripts` - Helper scripts for copying templates

## Git Workflow (Multi-Computer)

### Initial Setup (First Computer)
```bash
git init
git add .
git commit -m "Initial OOD templates"
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git push -u origin main
```

### On Second Computer
```bash
git clone https://github.com/YOUR_USERNAME/REPO_NAME.git
cd REPO_NAME
```

### Daily Workflow
```bash
# Before starting work
git pull

# After making changes
git add .
git commit -m "Descriptive message"
git push
```

## 🚀 Quick Start

1. **Read [GITHUB_SETUP.md](GITHUB_SETUP.md)** - Set up Git and push to GitHub
2. **Read [USAGE_GUIDE.md](USAGE_GUIDE.md)** - Learn the complete workflow
3. **Customize models** - Edit JSON files for your project
4. **Update diagrams** - Visualize your architecture
5. **Copy templates** - Use as starting points for implementation
6. **Sync across computers** - Keep your planning in sync

## 📋 Typical Workflow

1. **Plan** - Define components in `models/component-structure.json`
2. **Visualize** - Update diagrams in `/diagrams` (view on GitHub)
3. **Document** - Add decisions to `/docs`
4. **Implement** - Copy templates to your main Vite project
5. **Sync** - Commit and push changes

## 🛠️ Helper Scripts

```powershell
# Copy template interactively
.\scripts\copy-template-interactive.ps1

# Copy specific template
.\scripts\copy-template.ps1 -template "Component.jsx" -destination "src\components\MyComponent.jsx"
```

## 💡 Key Benefits

- ✅ **Think before coding** - Plan architecture upfront
- ✅ **Visual clarity** - See component relationships
- ✅ **Consistent patterns** - Use proven templates
- ✅ **Multi-computer workflow** - Sync via Git
- ✅ **Documentation** - Self-documenting architecture
