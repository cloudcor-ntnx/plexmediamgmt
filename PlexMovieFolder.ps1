	   <# 
	   
        .SYNOPSIS
            Prompts for name of new movie folder
    #>

$moviefolder = Read-host -prompt 'Enter the Name of the Movie'
New-Item -Path "\\10.0.0.11\USER-DATA-SHARES\TV-SHOWS\" -Name "$moviefolder" -ItemType "directory"
            write-host "Creating Folder..."
