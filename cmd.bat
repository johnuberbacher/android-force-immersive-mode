MODE 80,25
@echo off

:start
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
echo =================================================
echo.
echo MENU
echo. 
echo 1 - Force Immersive Mode
echo 2 - Revert back to Normality
echo 3 - Help
echo.
echo 0 - Quit
echo.
echo =================================================

:choice1
echo.
echo Enter an option: 
set /p input=""
echo. 
if '%input%'=='1' goto force
if '%input%'=='2' goto revert
if '%input%'=='3' goto help
echo "%input%" is not a valid command.
GoTo choice1
:help
echo - General Description -
echo This script allows you to force any Android application to enter "Immersive Mode". Immersive mode hides the Status Bar and Navigation Bar and will show them when swiping from the side of your screen.
echo.
echo The script checks to ensure that a device is connected via ADB, then prompts the user for the applications "com." string data which can be found from the Google Play Store URL for the application.
echo.
echo If the application is found on the connected ADB device, the script is run to force immersive mode on that app.
GoTo choice1
:force
echo Ensure that you have USB debugging enabled before continuing
echo.
<nul set /p "=To begin, press any key to check for ADB Devices..."
pause >nul
echo.
adb devices
GoTo choice2
:revent

:choice2
echo Find your chosen application in the Google Play Store
echo.
echo Examine the Website URL and find the string of text that 
echo starts with "com." or something similar and enter it here: 
set /p app=""
echo. 
Choice /M "You entered: %app% - Is this correct? "
If Errorlevel 2 Goto No
If Errorlevel 1 Goto Yes
Goto End
:No
GoTo choice2
:Yes
Echo Running script...
echo.
echo.
<nul set /p "=Press any key to return to the main menu ..."
pause >nul
GoTo start
