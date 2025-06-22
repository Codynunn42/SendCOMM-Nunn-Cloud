
# PowerShell script to fix permissions on SendCOMM-Nunn-Cloud directory

$targetPath = "C:\Users\codyn\OneDrive\Desktop\sendcomm-nunncloud"

# Disable inheritance and copy existing permissions
icacls $targetPath /inheritance:d

# Remove 'Everyone' permissions
icacls $targetPath /remove "Everyone" /T /C

# Grant full control to Cody Nunn explicitly
icacls $targetPath /grant "Cody Nunn (codynunn42@gmail.com):(OI)(CI)F" /T /C

Write-Host "Permissions successfully updated." -ForegroundColor Green
