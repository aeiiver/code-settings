Get-Content .\extensions | ForEach-Object {
    # Remove comments
    $line = ($_ -Replace "([^#])*#.*", "$1").Trim()

    # Ignore if line is empty
    If ($line -eq "") {
        Return
    }

    Write-Output ""
    codium --install-extension $line --force
}
