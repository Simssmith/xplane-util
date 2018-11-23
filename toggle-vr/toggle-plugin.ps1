Write-Host "`nEnabling Disabling Plugins"

$source = split-path (split-path $MyInvocation.MyCommand.Path -parent) -parent
$destination = Split-Path -Path $source -Parent
$destination = $destination + "\Resources\plugins"
$vrdest = $destination + ".vr"
$regdest = $destination + ".reg"

Write-Host $destination

$regExists = Test-Path $regdest

if ($regExists -eq $True) {
	Write-Host "`nMoving VR Plugin to backup and activating reg plugin"
	Rename-Item $destination $vrdest
	Rename-Item $regdest $destination
} else {
	Write-Host "`nActivating reg plugin and backing up vr plugin"
	Rename-Item $destination $regdest
	Rename-Item $vrdest $destination
}