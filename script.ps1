while ($true) {
    Clear-Host
    Write-Host "===== CTT WinUtil ====="
    Write-Host ""
    Write-Host "1. [RECOMMENDED] Stable Version"
    Write-Host "2. Dev Version (Advanced)"
    Write-Host "3. Exit (Do Nothing)"
    Write-Host ""

    $choice = Read-Host "Choose 1, 2, or 3"

    switch ($choice) {
        '1' {
            Write-Host "Loading Stable Version..."
            try {
                irm "https://christitus.com/win" | iex
            } catch {
                Write-Host "Error: Failed to launch Stable version." -ForegroundColor Red
                Write-Host "Check internet or try again later." -ForegroundColor Yellow
            }
            pause
            exit
        }
        '2' {
            Write-Host "WARNING: Dev Version may be unstable!" -ForegroundColor Yellow
            $confirm = Read-Host "Type 'YES' to continue"
            if ($confirm -eq "YES") {
                Write-Host "Loading Dev Version..."
                try {
                    irm "https://christitus.com/windev" | iex
                } catch {
                    Write-Host "Error: Failed to launch Dev version." -ForegroundColor Red
                }
            } else {
                Write-Host "Returning to menu..." -ForegroundColor Green
                timeout /t 2
                continue
            }
            pause
            exit
        }
        '3' {
            Write-Host "Exiting - Nothing changed." -ForegroundColor Green
            pause
            exit
        }
        default {
            Write-Host "Invalid choice! Pick 1 (Stable), 2 (Dev), or 3 (Exit)" -ForegroundColor Red
            timeout /t 2
        }
    }
}
