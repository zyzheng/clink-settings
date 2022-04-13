@rem !!! Do not change this file in-place, change its copy instead !!!
@rem !!!  Otherwise you will lose your settings after next update  !!!

@echo off

rem Simple "ver" prints empty line before Windows version
rem Use this construction to print just a version info
cmd /d /c ver | "%windir%\system32\find.exe" "Windows"

rem Set new prompt
PROMPT $E[92m$P$S$${git}$E[90m$$$E[m$S$E]9;12$E\

rem Cutom changes
doskey /macrofile=%~dp0profile/alias.bat

set ClinkDir=%~dp0
for /D %%i in (%ClinkDir%\clink*) do set ClinkExeDir=%%i
call "%ClinkExeDir%\clink_x64.exe" inject --profile %ClinkDir%/profile
if [%1]==[] goto :EOF
call %*
