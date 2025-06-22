
# PowerShell Script: FixPermissions_SendCOMM.ps1
# Purpose: Remove 'Everyone' Deny permissions, disable inheritance, and reset ACLs

$path = "C:\Users\codyn\OneDrive\Desktop\sendcomm-nunncloud"

Write-Host "🔧 Fixing permissions on $path..." -ForegroundColor Cyan

# Remove 'Everyone' permission entries recursively
icacls "$path" /remove Everyone /T /C

# Disable inheritance and convert inherited permissions to explicit
icacls "$path" /inheritance:d

# Reset all child object permissions to match the folder explicitly
icacls "$path" /reset /T

Write-Host "✅ Permissions successfully updated." -ForegroundColor Green
