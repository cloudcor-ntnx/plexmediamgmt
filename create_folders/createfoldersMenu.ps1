function mainMenu {
    $mainMenu = 'X'
    while($mainMenu -ne ''){
        Clear-Host
        Write-Host "`n`t`t Create New Folders`n"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " New Movie?"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " New TV-Show?"
        $mainMenu = Read-Host "`nSelection (leave blank to quit)"
        # Movie Folder  
        if($mainMenu -eq 1){
            subMenu1
        }
        # TV Show Folder  
        if($mainMenu -eq 2){
            subMenu2
        }
    }
}

function subMenu1 {
    $subMenu1 = 'X'
    while($subMenu1 -ne ''){
        Clear-Host
        Write-Host "`n`t`t Create New Folders`n"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " For MakeMKV?"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
            Write-Host -ForegroundColor DarkCyan " For Plex Library?"
        $subMenu1 = Read-Host "`nSelection (leave blank to quit)"
        # MKV Movie  
        if($subMenu1 -eq 1){
            Write-Host "New MKV Folder"
            $movie = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/MakeMKVMovie.ps1
            invoke-expression $($movie.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # Plex Movie
        if($subMenu1 -eq 2){
            Write-Host "New Plex Library Folder (default is the root folder)"
            $tvshow = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/PlexMovieFolder.ps1 
            invoke-expression $($tvshow.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        }
    }
function subMenu2 {
    $subMenu2 = 'X'
    while($subMenu2 -ne ''){
        Clear-Host
        Write-Host "`n`t`t Create New Folders`n"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "1"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " For MKV?"
        Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "2"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " For Plex TV Show Folder 1?"
	Write-Host -ForegroundColor DarkCyan -NoNewline "`n["; Write-Host -NoNewline "3"; Write-Host -ForegroundColor DarkCyan -NoNewline "]"; `
        Write-Host -ForegroundColor DarkCyan " For Plex TV Show Folder 2?"
        $subMenu2 = Read-Host "`nSelection (leave blank to quit)"
        # MKV TV Show  
        if($subMenu2 -eq 1){
            Write-Host "New MKV TV Show folder"
            $movie = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/MakeMKVTV.ps1
            invoke-expression $($movie.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        # Plex Library TV Show Folder 1
        if($subMenu2 -eq 2){
            Write-Host "New Plex TV Show Folder"
            $tvshow = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/PlexTVSHOWFolder.ps1
            invoke-expression $($tvshow.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
	        # Plex Library TV Show Folder 2
        if($subMenu3 -eq 3){
            Write-Host "New Plex TV Show Folder"
            $tvshow = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/create_folders/PlexTVSHOWFolder2.ps1
            invoke-expression $($tvshow.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
        }
    }

mainMenu
