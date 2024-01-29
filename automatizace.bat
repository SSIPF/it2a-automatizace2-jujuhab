@echo off
 
setlocal enabledelayedexpansion
 
set "filePath=C: \Users\sysadmin\Downloads\osyc\userlist\user_list.txt"
set "pswd="
 
if not defined password set "password=Default"
 
for /f "delims=" %%a in (%filePath%) do (
echo Adding user: "%%a" with password : Ipassword!
net user "%%a" !password! /add
)
