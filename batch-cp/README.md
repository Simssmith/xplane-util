# Copy files from a list

This script will loop through all the name in filelist.txt and take them from src-files folder and copy them to dest-files folder. 

  - The filelist.txt needs to have each file name in seperate line
  
# Parameters

  - Import a HTML file and watch it magically convert to Markdown
  - Drag and drop images (requires your Dropbox account be linked)

# How to Run this Powershell script
  - Install [Windows PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/PowerShell-Scripting?view=powershell-5.1)
  - Open Command Prompt (Right Click on Windows button in taskbar "normally bottom left" and choose  Command Prompt. If you are using Windows 10 it comes with [PowerShell ISE](https://docs.microsoft.com/en-us/powershell/scripting/core-powershell/ise/introducing-the-windows-powershell-ise?view=powershell-5.1) a much superior command prompt
  - Change to directory where this file is located
 
```sh
$ cd \path\to\this\script
$ powershell.exe -noprofile -executionpolicy bypass -file cp-filelist.ps1
```