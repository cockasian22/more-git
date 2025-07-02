$REPO = "https://github.com/cockasian22/more-git"
$CONFIG_URL = "$REPO/raw/main/config/gitconfig.snippet"

Write-Host "Installing more-git..." -ForegroundColor Cyan
New-Item -ItemType Directory -Path "$HOME\.git-templates" -Force | Out-Null
"# Local ignores" | Out-File "$HOME\.git-templates\local.gitignore"

if (-not (Select-String -Path "$HOME\.gitconfig" -Pattern "\[more-git\]" -Quiet)) {
    Invoke-WebRequest -Uri $CONFIG_URL -OutFile "$env:TEMP\more-git.snippet"
    Add-Content -Path "$HOME\.gitconfig" -Value (Get-Content "$env:TEMP\more-git.snippet")
    Write-Host "Installed aliases to $HOME\.gitconfig" -ForegroundColor Green
} else {
    Write-Host "more-git already installed" -ForegroundColor Yellow
}

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host "Note: Install GitHub CLI for 'git pr': winget install --id GitHub.cli" -ForegroundColor Yellow
}
