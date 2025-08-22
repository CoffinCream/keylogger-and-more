@echo off
chcp 65001 >nul 
:menu
cls
echo.
echo       keylogger -2.0
echo.
echo       1) keylogger
echo       2) leave
echo       3) other
echo.

set /p input="Select option: "

if "%input%"=="1" (
    goto key_entry
)
if "%input%"=="2" (
    exit
)
if "%input%"=="3" (
    goto menu_2
)

echo Invalid option.
pause
goto menu

:key_entry
cls
echo.
echo Keylogger - Enter keys (type 'exit' to return to menu)
:logloop
set /p key="Enter key: "
if /i "%key%"=="exit" (
    goto menu
)
echo You pressed: %key%
echo %key% >> keys.txt
pause
goto logloop

:menu_2 
cls
echo.
echo  1)   go to website 
echo  2)   learn to code
echo  3)   my github
echo  4)   back to main menu
echo.
set /p option="Enter option: "
if /i "%option%"=="1" (
    echo Opening website...
    rem start https://
    pause
    goto menu_2
)
if /i "%option%"=="2" (
    echo Learn to code: https://www.freecodecamp.org/
    rem start https://www.freecodecamp.org/
    pause
    goto menu_2
)
if /i "%option%"=="3" (
    echo My GitHub: https://github.com/CoffinCream
    rem start https://github.com/CoffinCream
    pause
    goto menu_2
)

if /i "%option%"=="4" (
   goto menu
)


echo Invalid option.
pause
goto menu_2