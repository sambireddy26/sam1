 param(
        [Parameter(Mandatory)]
        [string]$ComputerName,
 
        [Parameter(Mandatory)]
        [string]$Param1,
 
        [Parameter(Mandatory)]
        [string]$Param2
    )
 
        Write-Host "Doing something here to reference $Param1"
        Write-Host "Doing something here to reference $Param2"
        
