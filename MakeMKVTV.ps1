	   <# 
	   
        .SYNOPSIS
            Prompts for name of new TV Show folder
    #>

$TVfolder = Read-host -prompt 'Enter the Name of the TV Show'
New-Item -Path "C:\Users\danny\Videos\MakeMKV\TV-SHOWS" -Name "$TVfolder" -ItemType "directory"
            write-host "Creating Folder..."
