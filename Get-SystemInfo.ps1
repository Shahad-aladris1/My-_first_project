
# Script: Get basic system information
# Author: Shahad Aladris

Write-Host "🔍 Collecting system information..." -ForegroundColor Cyan

# Computer name and current user
Write-Host "`nComputer Name: $env:COMPUTERNAME"
Write-Host "Current User: $env:USERNAME"

# Operating System info
Write-Host "`nOperating System Info:"
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version

# IP Addresses
Write-Host "`nIPv4 Addresses:"
Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike "*Loopback*" } | Select-Object IPAddress, InterfaceAlias

Write-Host "`n✅ System information collected successfully." -ForegroundColor Green