@echo off
color 1b
cls

:bootscreen
cls
:desktop
cls
color 0a
cls
echo Welcome NewUser!
echo.
echo Date: %date% Time: %time%
echo Here are your options in BatchOS :-)
echo 1)Word
echo 2)Documents
echo 3)Calculator
set /p menuselect=
if %menuselect% == 1 goto write
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator

:write
cls
echo Welcome to Word, an application which let's you write text files
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created.
pause
cls
set /p textone=
pause
echo Ok, now your done, you will be redirected to the desktop.
pause
goto desktop

:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop

:browse
cls
echo 1)%writeone%
echo 2)%writetwo%
echo 3)%writethree%
set /p browse= 
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree

:textone
cls
echo %writeone%
echo %textone%
pause
goto desktop

:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop

:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop