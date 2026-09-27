$OperatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem

[PSCustomObject]@{
    Hostname        = $env:COMPUTERNAME
    OperatingSystem = $OperatingSystem.Caption
    Version         = $OperatingSystem.Version
    LastBootUpTime  = $OperatingSystem.LastBootUpTime
}
