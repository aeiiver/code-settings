Get-Content .\extensions | Select-String "^[^#]+" | ForEach-Object {
    $ext = ($_.Matches.Value).Trim()
    codium --install-extension "$ext" --force
}
