function mainMenu {
    $mainMenu = 'X'
    while($mainMenu -ne ''){
        Clear-Host
        Write-Host "`n`t`t Plex Media Mgmt`n"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " Create MKV Folder"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " Create Plex Folder"
        $mainMenu = Read-Host "`nSelection (leave blank to quit)"
        # Create a folder for makemkv 
        if($mainMenu -eq 1){
            subMenu1
        }
        # Create folder on the Plex Media directories 
        if($mainMenu -eq 2){
            subMenu2
        }
    }
}

function subMenu1 {
    $subMenu1 = 'X'
    if($subMenu1 -ne ''){
        Clear-Host
        Write-Host "`n`t`t Create new makemkv folder`n"
        Write-Host -ForegroundColor Cyan "Enter the folder name"
            $folderName = read-host "MKV Folder"
            New-Item -Path "C:\Users\danny\Videos\MakeMKV" -Name "$folderName" -ItemType "directory"
            write-host "Creating Folder..."

        }

}
function subMenu2 {
    $subMenu2 = 'X'
    while($subMenu2 -ne ''){
        Clear-Host
        Write-Host "`n`t`t Plex Media Mgmt`n"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " Movie?"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " TV Show?"
	Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "3"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " Exit?"
        $subMenu2 = Read-Host "`nSelection (leave blank to quit)"
        # Movie 
        if($subMenu2 -eq 1){
            Write-Host "New Movie Folder"
            $movie = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/PlexMovieFolder.ps1
            invoke-expression $($movie.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # TV Show
        if($subMenu2 -eq 2){
            Write-Host "New TV Show Folder"
            $tvshow = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/PlexTVSHOWFolder.ps1
            invoke-expression $($tvshow.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # Exit 
        if($subMenu2 -eq 3){
         exit
        }
        }
    }
}

mainMenu
