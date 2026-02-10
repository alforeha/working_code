# Quick Template Copy Script
# Interactive mode - prompts for template and destination

Write-Host "📋 Template Copy Wizard" -ForegroundColor Cyan
Write-Host "========================`n" -ForegroundColor Cyan

# Show available templates
Write-Host "Available templates:" -ForegroundColor Yellow
$templates = Get-ChildItem (Join-Path $PSScriptRoot "..\templates")
for ($i = 0; $i -lt $templates.Count; $i++) {
    Write-Host "  [$($i + 1)] $($templates[$i].Name)" -ForegroundColor White
}

# Get template choice
Write-Host ""
$choice = Read-Host "Select template number (1-$($templates.Count))"
$choiceIndex = [int]$choice - 1

if ($choiceIndex -lt 0 -or $choiceIndex -ge $templates.Count) {
    Write-Host "❌ Invalid selection" -ForegroundColor Red
    exit 1
}

$selectedTemplate = $templates[$choiceIndex].Name
Write-Host "✅ Selected: $selectedTemplate`n" -ForegroundColor Green

# Get destination
Write-Host "Enter destination path (relative to your main project):" -ForegroundColor Yellow
Write-Host "  Example: src\components\MyComponent.jsx" -ForegroundColor Gray
$destination = Read-Host "Destination"

# Get project path
$projectPath = Read-Host "Main project path (or press Enter for default: ..)"
if ([string]::IsNullOrWhiteSpace($projectPath)) {
    $projectPath = ".."
}

# Execute copy
& (Join-Path $PSScriptRoot "copy-template.ps1") -template $selectedTemplate -destination $destination -projectPath $projectPath
