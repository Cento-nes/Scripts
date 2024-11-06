*Script-1*

Get-Process | Where-Object { $_.CPU -gt 1800 } | Select-Object -Property Name, CPU, StartTime, Id
