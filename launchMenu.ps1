######## PS Scripts Launcher#############
<#    
        .SYNOPSIS
            Will invoke scripts from github repo 
#>


function launchMenu {
    $launchMenu = 'X'
    while($launchMenu -ne ''){
            Write-Host "Connecting to github for scripts"
            $repo = invoke-webrequest https://raw.githubusercontent.com/cloudcor-ntnx/plexmediamgmt/master/MakeMKVMovie.ps1
            invoke-expression $($repo.content)
			Write-Host -ForegroundColor DarkCyan "`nScript execution complete."
            Write-Host "`nPress any key to return to the previous menu"
            [void][System.Console]::ReadKey($true)
        }
    }
}
