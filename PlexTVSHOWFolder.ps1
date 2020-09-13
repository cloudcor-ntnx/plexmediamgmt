	   <# 
	   
        .SYNOPSIS
            Prompts for name of new TV Show folder
    #>

$TVfolder = Read-host -prompt 'Enter the Name of the Container'
New-Item -Path "Z:\TV-SHOWS" -Name "$folderName" -ItemType "directory"
            write-host "Creating Folder..."
