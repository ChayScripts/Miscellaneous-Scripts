##VB script to refresh active window/desktop
Option Explicit
Dim WSHShell, strDesktop
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop
WSHShell.SendKeys "{F5}"
WScript.Quit
##VB script end

#copy above vb script to c:\users\userid\ folder.

for ($i=1; $i -le 100000; $i++){
Invoke-Command -ScriptBlock {cscript 'C:\Users\userid\DesktopRefresh.vbs'}
foreach ($one in (150..1))
{
cls
write-host Refreshing in $one seconds
sleep 1
}
}

######################################################################################
# Second script 

Clear-Host
Echo "Keep alive w/ scroll lock..."
$WinShell = New-Object -com "Wscript.Shell"
while ($true)
{
$WinShell.sendkeys("{SCROLLLOCK}")
Start-Sleep -Seconds 10
}

