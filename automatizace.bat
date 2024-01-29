@echo off
 
setlocal enabledelayedexpansion
 
set "filePath=R:\osy_au"
set "pswd="
set "gr1="
 
if not defined password set "password=Default"
 
for /f "delims=" %%a in (%filePath%) do (
echo Adding user: "%%a" with password : Ipassword!
net user "%%a" !password! /add
)

net localgroup #gr1# /add 
net localgroup #gr1# uživ /add 
net localgroup #gr1#  