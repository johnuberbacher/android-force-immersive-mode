@echo off
echo. 
echo This script allows you to force any Android 
echo application to enter "Immersive Mode".
echo. 
echo Immersive mode hides the StatusBar and 
echo NavigationBar and will show them when 
echo swiping from the side of your screen.
echo. 
echo Developer options must be enabled on your 
echo device for this to work.
echo. 
echo To begin: Find your chosen application in 
echo the Google Play Store
echo.
echo Examine the website url and find the text that 
echo begins with "com.android" or something similar.
echo.
<nul set /p "=To begin, press any key to check for ADB Devices..."
pause >nul
echo.
adb devices
echo.
echo Enter applications "com" string: 
set /p input=""
echo. 
choice /M "Is this correct  %input% ?" /c YN
echo. 
If "%INPUT%" == "y" goto yes
If "%INPUT%" == "n" goto no
If "%INPUT%" == "Y" goto yes
If "%INPUT%" == "N" goto no
echo. 
:yes
echo yes
:no
echo no
:cont
pause