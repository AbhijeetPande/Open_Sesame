@ECHO off
REM This will turn off printing (ECHO'ing) of each batch file line.
REM This script is meant to launch my working environment everyday when I show up to work.



@echo off

title This is your first batch script!
echo Welcome to batch scripting!
pause

REM Opening google:

start "" https://penweb-uat-web.penweb.local/member/auth/app/login
start "" https://penweb-pre-web.penweb.local/member/auth/app/login

REM Opening VSCode:
cd "C:\Users\pandea\AppData\Local\Programs\Microsoft VS Code"
start Code.exe

SET foo=bar
REM Note: Do not use whitespace between the names and value, SET foo = bar will not work.

SET /A four=2+2
REM Note: The /A allows for arithmetic operation when setting a variable.

REM By default, variables are global to your entire command  prompt session. Call the SETLOCAL command to make variables local to the scope of your script.
REM C:\Users\pandea\Open_Sesame.cmd
