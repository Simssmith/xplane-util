# Copy files from a list

This script will run RegEx on a text file and place the output in another file.  

    
# Parameters

  -inputFile the file to inspect
  -outputFile the file to store the matches

# How to Run this Powershell script
  - Install [Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/PowerShell-Scripting?view=powershell-5.1)
  - Open Command Prompt (Right Click on Windows button in taskbar "normally bottom left" and choose  Command Prompt. If you are using Windows 10 it comes with [PowerShell ISE](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/introducing-the-windows-powershell-ise?view=powershell-5.1) a much superior command prompt
  - Change to directory where this file is located
 
```sh
$ cd \path\to\this\script
$ powershell.exe -noprofile -executionpolicy bypass -file .\xtract.ps1 -inputFile earth.wed.xml -outputFile filelist.txt
```