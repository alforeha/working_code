# Template Copy Helper Script
# Usage: .\scripts\copy-template.ps1 -template "Component.jsx" -destination "src\components\MyComponent.jsx"

param(
    [Parameter(Mandatory=$true)]
    [string]$template,
    
    [Parameter(Mandatory=$true)]
    [string]$destination,
    
    [string]$projectPath = ".."
)

$templatePath = Join-Path $PSScriptRoot "..\templates\$template"
$destPath = Join-Path $projectPath $destination

# Check if template exists
if (-not (Test-Path $templatePath)) {
    Write-Host "❌ Template not found: $template" -ForegroundColor Red
    Write-Host "`nAvailable templates:" -ForegroundColor Yellow
    Get-ChildItem (Join-Path $PSScriptRoot "..\templates") | ForEach-Object { Write-Host "  - $($_.Name)" }
    exit 1
}

# Create destination directory if it doesn't exist
$destDir = Split-Path $destPath -Parent
if (-not (Test-Path $destDir)) {
    Write-Host "📁 Creating directory: $destDir" -ForegroundColor Cyan
    New-Item -ItemType Directory -Path $destDir -Force | Out-Null
}

# Copy template
try {
    Copy-Item $templatePath -Destination $destPath -Force
    Write-Host "✅ Copied: $template → $destination" -ForegroundColor Green
    Write-Host "`n📝 Next steps:" -ForegroundColor Yellow
    Write-Host "  1. Open $destination in your editor"
    Write-Host "  2. Rename the component/function"
    Write-Host "  3. Add props from your schema"
    Write-Host "  4. Implement based on your model"
    Write-Host "`n💡 Check your component-structure.json for implementation details" -ForegroundColor Cyan
} catch {
    Write-Host "❌ Error copying template: $_" -ForegroundColor Red
    exit 1
}
