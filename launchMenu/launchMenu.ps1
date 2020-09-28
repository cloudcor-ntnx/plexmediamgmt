<#
    .SYNOPSIS
        Menu Driven CMDlets 
    .DESCRIPTION
        Main Menu gives option to select which type of script to use:
		
		launchmenu --> if 1 = submenu1 create folders
                  2 = submenu2 rename files 
				  3 = check mountpoint freespace 
		
#>

function mainMenu {
    $mainMenu = 'X'
    while($mainMenu -ne ''){
        Clear-Host
		#Setting the first menu options
		
        Write-Host "`n`t`t PowerShell CMDLETs Tool`n"
        Write-Host -ForegroundColor Cyan "Script Options Below"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " Create New Folders"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " Rename Files"
	Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "3"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " Check free disk space"
	Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "4"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " Copy Files"
        $mainMenu = Read-Host "`nSelection (leave blank to quit)"
		
        #IF statements below for the selected option above
		#subMenu1 Create New Folders 
        if($mainMenu -eq 1){
            subMenu1
        }
        #subMenu2 Rename Files in a Folder 
        if($mainMenu -eq 2){
            subMenu2
        }
	#subMenu3 Check Free space 
		if($mainMenu -eq 3){
            subMenu3
        }
	#subMenu4 robocopy files  
		if($mainMenu -eq 4){
            subMenu4
        }
    }
}

function subMenu1 {
    $subMenu1 = 'X'
    if($subMenu1 -ne ''){
            Write-Host "Connecting to new folder script"
            $gitcreatefolders = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/createfoldersMenu.ps1
            invoke-expression $($gitcreatefolders.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }

}
function subMenu2 {
    $subMenu2 = 'X'
    if($subMenu2 -ne ''){
            Write-Host "Connecting to rename files script"
            $gitRenameFiles = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/renameFiles/renameFiles.ps1
            invoke-expression $($gitRenameFiles.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }	
        
}
function subMenu3 {
    $subMenu3 = 'X'
    if($subMenu3 -ne ''){
            Write-Host "Connecting to check free space script"
            $gitfreespace = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/freespace_check/mountpoints_free.ps1
            invoke-expression $($gitfreespace.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            [void][System.Console]::ReadKey($true)
}
function subMenu4 {
    $subMenu4 = 'X'
    if($subMenu4 -ne ''){
            Write-Host "Connecting to robocopy script"
            $gitrobocopy = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/movefiles/robocopyfiles.ps1
            invoke-expression $($gitrobocopy.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            [void][System.Console]::ReadKey($true)
}
}        
}
mainMenu
