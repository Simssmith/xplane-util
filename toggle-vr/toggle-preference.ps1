Write-Host "`nEnabling Disabling Preference"

$source = split-path (split-path $MyInvocation.MyCommand.Path -parent) -parent
$destination = Split-Path -Path $source -Parent
$destination = $destination + "\Output\preferences"
$vrdest = $destination + ".vr"
$regdest = $destination + ".reg"

Write-Host $destination

$fileExists = Test-Path $regdest
if ($fileExists -eq $True) {
	Write-Host "`nMoving VR to backup and activating reg preference"
	Rename-Item $destination $vrdest
	Rename-Item $regdest $destination
} else {
	Write-Host "`nbackup reg and make vr active preference"
	Rename-Item $destination $regdest
	Rename-Item $vrdest $destination
}