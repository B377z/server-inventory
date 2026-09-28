$OperatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
$ComputerSystem = Get-CimInstance -ClassName Win32_ComputerSystem

[PSCustomObject]@{
    Hostname          = $env:COMPUTERNAME
    OperatingSystem   = $OperatingSystem.Caption
    Version           = $OperatingSystem.Version
    LogicalProcessors = $ComputerSystem.NumberOfLogicalProcessors
    MemoryGB          = [math]::Round($ComputerSystem.TotalPhysicalMemory / 1GB, 2)
    LastBootUpTime    = $OperatingSystem.LastBootUpTime
}
