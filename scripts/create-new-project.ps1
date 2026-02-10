# Create New Project from OOD Template
# Usage: .\create-new-project.ps1 -projectName "my-fitness-app"

param(
    [Parameter(Mandatory=$true)]
    [string]$projectName,
    
    [string]$githubUsername = "alforeha"
)

$templateRepo = "working_code"
$basePath = "C:\Users\alexf\Desktop\Projects"

Write-Host "`n🎯 Creating new project: $projectName" -ForegroundColor Cyan
Write-Host "=" * 50 -ForegroundColor Cyan

# 1. Create project folder
$projectFolder = Join-Path $basePath $projectName
if (Test-Path $projectFolder) {
    Write-Host "❌ Project folder already exists: $projectFolder" -ForegroundColor Red
    exit 1
}

Write-Host "`n📁 Creating project folder..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path $projectFolder | Out-Null
Set-Location $projectFolder

# 2. Clone template for OOD
Write-Host "`n📋 Cloning OOD template..." -ForegroundColor Yellow
$oodFolder = "$projectName-ood"
git clone "https://github.com/$githubUsername/$templateRepo.git" $oodFolder
Set-Location $oodFolder

# 3. Remove template remote
Write-Host "`n🔗 Removing template remote..." -ForegroundColor Yellow
git remote remove origin

# 4. Instructions for GitHub setup
Write-Host "`n" + ("=" * 50) -ForegroundColor Green
Write-Host "✅ OOD repository created!" -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Green

Write-Host "`n📝 NEXT STEPS:" -ForegroundColor Yellow
Write-Host "`n1️⃣  Create GitHub repository:" -ForegroundColor White
Write-Host "   Go to: https://github.com/new" -ForegroundColor Gray
Write-Host "   Name: $projectName-ood" -ForegroundColor Gray
Write-Host "   Don't initialize with README" -ForegroundColor Gray

Write-Host "`n2️⃣  Connect to GitHub:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/$githubUsername/$projectName-ood.git" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray

Write-Host "`n3️⃣  Plan your app:" -ForegroundColor White
Write-Host "   code templates/APP_PLANNING_PROMPT.md" -ForegroundColor Gray

Write-Host "`n4️⃣  Create Vite app (after planning):" -ForegroundColor White
Write-Host "   cd .." -ForegroundColor Gray
Write-Host "   npm create vite@latest $projectName-app -- --template react" -ForegroundColor Gray

Write-Host "`n📂 Current location: $oodFolder" -ForegroundColor Cyan
Write-Host "`n"
