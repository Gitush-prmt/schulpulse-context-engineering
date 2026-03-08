while ($true) {
    $status = git status --porcelain
    if ($status) {
        Write-Host "Changes detected, syncing to GitHub..."
        git add .
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        git commit -m "Auto-sync update: $timestamp"
        git push
        Write-Host "Sync complete!"
    }
    Start-Sleep -Seconds 5
}
