<#
    .SYNOPSIS
        Rename Files Tool  
    .DESCRIPTION
        Change name of all files in a directory
#>




function mainMenu {
    $mainMenu = 'X'
    while($mainMenu -ne ''){
        Clear-Host
		#Setting the first menu options
		
        Write-Host "`n`t`t Rename Media Tool`n"
        Write-Host -ForegroundColor Cyan "Connect Options"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " Rename Media Files "
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " I dont need to do anything"
        $mainMenu = Read-Host "`nSelection (leave blank to quit)"
        #IF statements below for the selected option above
		#subMenu1 is to the connect-cluster command
        if($mainMenu -eq 1){
            subMenu1
        }
        #subMenu2 takes you to the basic get-commands
        if($mainMenu -eq 2){
            subMenu2
        }
    }
}

function subMenu1 {
    $subMenu1 = 'X'
    if($subMenu1 -ne ''){
            $i = 1
            $path = Read-Host -prompt "Enter Path of Files"
	                write-host = "'Getting the name of the DVD'" 
			$showname_ = Get-CimInstance Win32_logicaldisk |select VolumeName 
			Get-ChildItem -Path $path -Filter *.mkv |
            ForEach-Object {
            $extension = $_.Extension
            $newName = "$showname_{0:d1}{1}" -f $i, $extension
            $i++
            Rename-Item -Path $_.FullName -NewName $newName
			Write-Host "`nRenaming Files..."
			[void][System.Console]::ReadKey($true)
        } 
    }
}

function subMenu2 {
    $subMenu2 = 'X'
    while($subMenu2 -ne ''){
        Clear-Host
		##subMenu2 is the basic get-cmdlets can be expanded upon ##
        $subMenu2 = Read-Host "`nSelection (leave blank to quit)"
		Write-Host "`nPress any key to return to the previous menu"
        [void][System.Console]::ReadKey($true)
        $timeStamp = Get-Date -Uformat %m%d%y%H%M	   
        
        
    }
     

}



mainMenu
