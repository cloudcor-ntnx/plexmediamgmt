	   <# 
	   
        .SYNOPSIS
            Prompts for name of new makemkv movie folder 
    #>

$makemkvmovie = Read-host -prompt 'Enter the Name of the Movie'
New-Item -Path "C:\Users\danny\Videos\MakeMKV\MOVIES" -Name "$makemkvmovie" -ItemType "directory"
            write-host "Creating Folder..."
