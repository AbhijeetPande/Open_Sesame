@ECHO off
REM This will turn off printing (ECHO'ing) of each batch file line.
REM This script is meant to launch my working environment everyday when I show up to work.



@echo off

title This is your first batch script!
echo Good Morning!
echo The Usual for you, sir?
:loop
set /p primary="Enter Selection(Y/N): "

REM If the user decides that he wants to activate all applications:
IF /I %primary% EQU Y ( SET VSCode=Y & SET Outlook=Y & SET TestComplete=Y & SET Excel=Y & SET Google=Y & pause )

REM If the user wants to activate certain applications only:

IF /I %primary% NEQ Y IF /I %primary% EQU N ( 
    echo So what would you prefer instead of the usual, sir? 
    set /p VSCode="Enter Selection for VSCode (Y/N): " 
    set /p Outlook="Enter Selection for Outlook (Y/N): " 
    set /p TestComplete="Enter Selection for TestComplete (Y/N): " 
    set /p Excel="Enter Selection for Excel (Y/N): " 
    set /p Google="Enter Selectionfor Google (Y/N): " 
    pause )

REM If the user made an invalid entry (Not Y or N):
IF /I %primary% NEQ Y IF /I %primary% NEQ N (
    echo This is an invalid entry. try again please.
    GOTO loop
)

REM If the user says no to everything:

pause


REM Opening VSCode:
 cd "C:\Users\pandea\AppData\Local\Programs\Microsoft VS Code"
 start Code.exe

REM Opening TestComplete:
REM cd "C:\Program Files (x86)\SmartBear\TestComplete 14\x64\Bin"
REM start TestComplete.exe

REM Opening Outlook and Excel:
 cd "C:\Program Files (x86)\Microsoft Office\root\Office16"
 start OUTLOOK.exe
 start EXCEL.exe

REM Opening google:

 start "" https://penweb-uat-web.penweb.local/member/auth/app/login
 start "" https://penweb-pre-web.penweb.local/member/auth/app/login






REM By default, variables are global to your entire command  prompt session. Call the SETLOCAL command to make variables local to the scope of your script.
REM C:\Users\pandea\Desktop\Open_Sesame.cmd
