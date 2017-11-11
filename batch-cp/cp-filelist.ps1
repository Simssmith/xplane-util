Write-Host "`nStaring to Read each line in filelist.txt"

foreach($item in Get-Content .\filelist.txt){
    Write-Host "`nlooping through each file $item"
    $srcfilename = "$item.jpg"
    Write-Host "`nFilename is $srcfilename"
    Copy-Item src-files\$srcfilename .\dest-files
}


Write-Host "`nExit the script"