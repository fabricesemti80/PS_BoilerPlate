<#
.SYNOPSIS
    Short description
.DESCRIPTION
    Long description
.EXAMPLE
    Example of how to use this cmdlet
.EXAMPLE
    Another example of how to use this cmdlet
#>

[cmdletbinding(SupportsShouldProcess = $True)]
[OutputType([int])]
param(
    # [Parameter(Mandatory = $True)]
    # [string]
    # $Param1
)
    
begin {
    
    # All errors terminating - good practice
    $ErrorActionPreference = [System.Management.Automation.ActionPreference]::Stop

    # Current location of the script, to make the script transferable
    $CurrentPath = Split-Path -Parent $PSCommandPath

    # Custom module cotnaining the executable functions for the logic 
    Import-Module $CurrentPath\src\AwsomeModule.psm1 -Force
    Get-Command -Module AwsomeModule # list imported functions

    # Configuration data stored in the config folder
    $config = Import-PowerShellDataFile $CurrentPath\config\config.psd1
    $config.AllNodes # list imported config elements
    
}
    
process {
    #if ($PSCmdlet.ShouldProcess()){
    
    #} else {
    
    #}
        
}
    
end {
}
