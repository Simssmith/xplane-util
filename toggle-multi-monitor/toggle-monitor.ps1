Write-Host "`nEnabling Disabling Reshade"

$source = split-path (split-path $MyInvocation.MyCommand.Path -parent) -parent
$destination = Split-Path -Path $source -Parent
$destination = $destination + "\Output\preferences"
$singledest = $destination + ".singlemon"
$multidest = $destination + ".multimon"

Write-Host $destination

$fileExists = Test-Path $multidest
if ($fileExists -eq $True) {
	Write-Host "`nDisabling Single and Enable Multi"
	Rename-Item $destination $singledest
	Rename-Item $multidest $destination
} else {
	Write-Host "`nDisabling Multi and Enabl Single"
	Rename-Item $destination $multidest
	Rename-Item $singledest $destination
}