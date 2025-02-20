function knock{
    param(
        [switch]$Gd,
        [switch]$Cf
    )
    if ($Gd -and -not $Cf){
        $target = "8.8.8.8"
    }elseif ($Cf -and -not $Gd){
        $target = "1.1.1.1"
    }else {
        Write-Host "Please specify either -Gd for Google DNS or -Cf for Cloudflare DNS."
        return
    }

    Write-Host "Knocking on $target continuously. Press Ctrl+C to stop."
    While ($true){
        Test-Connection -ComputerName $target -Count 1
        StartSleep -Seconds 1
    }
}