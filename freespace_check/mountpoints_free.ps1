#mountpoints-freespace.ps1
#details on mountpoints

$TotalGB = @{Name="Capacity(GB)";expression={[math]::round(($_.Capacity/ 1073741824),2)}}
$FreeGB = @{Name="FreeSpace(GB)";expression={[math]::round(($_.FreeSpace / 1073741824),2)}}
$FreePerc = @{Name="Free(%)";expression={[math]::round(((($_.FreeSpace / 1073741824)/($_.Capacity / 1073741824)) * 100),0)}}
 
function get-mountpoints {
$volumes = Get-WmiObject win32_volume -Filter "DriveType='3'"
$volumes | Select Name, Label, DriveLetter, FileSystem, $TotalGB, $FreeGB, $FreePerc | Format-Table -AutoSize
Write-Host "`nPress any key to return to the previous menu"
[void][System.Console]::ReadKey($true)
}
 
get-mountpoints
