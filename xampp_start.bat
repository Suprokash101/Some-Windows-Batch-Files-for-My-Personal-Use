@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"

start "" "C:\xampp\xampp-control.exe"

timeout /t 10

%SendKeys% "{TAB}{TAB}{ENTER}"

timeout /t 10

%SendKeys% "{TAB}{TAB}{ENTER}"

taskkill /IM cmd.exe

goto:EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
