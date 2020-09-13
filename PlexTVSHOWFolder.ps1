	   <# 
	   
        .SYNOPSIS
            Prompts for name of new TV Show folder
    #>

$TVfolder = Read-host -prompt 'Enter the Name of the TV Show'
New-Item -Path "\\10.0.0.11\USER-DATA-SHARES\TV-SHOWS\" -Name "$TVfolder" -ItemType "directory"
            write-host "Creating Folder..."
