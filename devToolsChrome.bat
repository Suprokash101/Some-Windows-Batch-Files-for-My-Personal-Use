@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"

start chrome

timeout /t 10

rem %SendKeys% "about+;blank{ENTER}"

rem timeout /t 3

%SendKeys% "^+j"

goto:EOF

@end
// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
