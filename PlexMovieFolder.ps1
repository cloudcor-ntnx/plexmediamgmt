	   <# 
	   
        .SYNOPSIS
            Prompts for name of new movie folder
    #>

$moviefolder = Read-host -prompt 'Enter the Name of the Movie'
New-Item -Path "Z:\MOVIES" -Name "$moviefolder" -ItemType "directory"
            write-host "Creating Folder..."
