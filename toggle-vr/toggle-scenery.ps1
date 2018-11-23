Write-Host "`nEnabling Disabling Custom scenery"

$source = split-path (split-path $MyInvocation.MyCommand.Path -parent) -parent
$destination = Split-Path -Path $source -Parent
$destination = $destination + "\Custom Scenery"
$vrdest = $destination + ".vr"
$regdest = $destination + ".reg"

Write-Host $destination

$fileExists = Test-Path $regdest
if ($fileExists -eq $True) {
	Write-Host "`nMoving VR to backup and activating reg"
	Rename-Item $destination $vrdest
	Rename-Item $regdest $destination
} else {
	Write-Host "`nbackup reg and make vr active"
	Rename-Item $destination $regdest
	Rename-Item $vrdest $destination
}