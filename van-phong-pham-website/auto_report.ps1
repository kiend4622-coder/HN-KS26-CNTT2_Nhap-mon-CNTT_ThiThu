# Script: auto_report.ps1
# Tac gia: DO TRUNG KIEN
# Ngay tao: 27/10/26
 
Write-Host "Dang loc log..."
 
"=== BAO CAO LOI ===" >logs/auto_report.txt 
Get-Content logs/shop.log | Select-String "ERROR" >> logs/auto_report.txt 
Write-Host "Hoan thanh!"
