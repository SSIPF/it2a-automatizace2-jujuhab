@echo off
 
setlocal enabledelayedexpansion
 
set "filePath=R:\osy_au"
set "pswd="
set "group="
 
if (not defined password set "password=Default"
)
 
net localgroup "gr1" /add 
net localgroup "gr2" /add

for /f "delims=" %%a in (%filePath%) do (
echo Adding user: "%%a" with password : !password!
net user "%%a" !password! /add
net localgroup "gr1" "%%a" /add 
net localgroup "gr2"  "%%a" /add
)

pause 
echo