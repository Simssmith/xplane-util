Write-Host "`nEnabling Disabling Reshade"

$source = split-path (split-path $MyInvocation.MyCommand.Path -parent) -parent
$destination = Split-Path -Path $source -Parent
$destination = $destination + "\opengl32.dll"
Write-Host $destination

$fileExists = Test-Path $destination
if ($fileExists -eq $True) {
	Write-Host "`nDisabling Reshade"
	Rename-Item $destination "$destination.disable"
} else {
	Write-Host "`nEnabling Reshade"
	Rename-Item "$destination.disable" $destination
}

