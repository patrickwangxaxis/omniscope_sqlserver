@echo off

taskkill /f /im excel.exe

pushd %~dp0
cscript make_excel.vbs


