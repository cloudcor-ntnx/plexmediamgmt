	   <# 
	   
        .SYNOPSIS
            Prompts for name of new TV Show folder
    #>

$TVfolder2 = Read-host -prompt 'Enter the Name of the TV Show'
New-Item -Path "\\10.0.0.11\USER-DATA-SHARES\TV-SHOWS-2\" -Name "$TVfolder2" -ItemType "directory"
            write-host "Creating Folder..."
