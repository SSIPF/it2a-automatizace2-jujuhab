@echo off 

setlocal enabledelayedexpansion

param(
    [string]$file
    [string]$pswd
)

if (-not $file) {
    Write-Host "chybi povinny parametr -file"
    exit
}

if(-not $pswd) {
    $pswd = "defaultheslo"
}

$username = get-content