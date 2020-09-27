<#
    .SYNOPSIS
        Robocopy based on entered paths Source Dir 
    .DESCRIPTION
        Robocopy based on entered paths Source Dir
        Robocopy with the following options:
        
        /copyall /e /nooffload /j /z
        
#>
Write-Host "`n`t`t PowerShell CMDLETs Tool`n"
Write-Host -ForegroundColor Cyan "Script Options Below"
$source = Read-host -prompt 'Enter the Source Path'
$destination = Read-host -prompt 'Enter the Name of the Movie'

robocopy $source $destination /copyall /e /nooffload /j /z
