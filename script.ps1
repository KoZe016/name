Write-Host "======================================"
Write-Host "      CTT Windows Utility"
Write-Host "======================================"
Write-Host ""
Write-Host "1. Stable Branch (Recommended)"
Write-Host "2. Dev Branch"
Write-Host ""
Write-Host "======================================"

$choice = Read-Host "Please select a branch (1 or 2)"

switch ($choice) {
    '1' {
        Write-Host "Loading Stable Branch..."
        irm "https://christitus.com/win" | iex
    }
    '2' {
        Write-Host "Loading Dev Branch..."
        irm "https://christitus.com/windev" | iex
    }
    default {
        Write-Host "Invalid selection. Please run again and choose 1 or 2."
        pause
        exit
    }
}
