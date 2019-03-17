Write-Host "`nEnabling Disabling Plugins"

# run SteamVR, ASXP, ProjectFly, Pilot2ATC, X-Plane
# read launch-apps.txt to get all apps

$file = "launch-apps.txt"
$FileContent = Get-Content $file 
$separator = "-ArgumentList"

Write-Host "Starting multi app launcher"

foreach ($execCmd in $FileContent) {
	Write-Host "Launching $filepath"
	$cmdExe, $cmdArg = $execCmd -split $separator
	Write-Host "cmdExe $cmdExe cmdArg $cmdArg"
	if ($cmdArg) {
		Start-Process -FilePath $cmdExe -ArgumentList $cmdArg | Wait-Process
	} else {
		Start-Process -FilePath $cmdExe | Wait-Process
	}
	Start-Sleep -s 5
}

Write-Host "Exiting multi app launcher"

