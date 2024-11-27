@echo off

color 0c
title Script by EvilDante

goto start
:start
echo Welcome to the real world
echo.
echo " ________            __  __  _______                        __                "
echo "|        \          |  \|  \|       \                      |  \               "
echo "| $$$$$$$$__     __  \$$| $$| $$$$$$$\  ______   _______  _| $$_     ______   "
echo "| $$__   |  \   /  \|  \| $$| $$  | $$ |      \ |       \|   $$ \   /      \  "
echo "| $$  \   \$$\ /  $$| $$| $$| $$  | $$  \$$$$$$\| $$$$$$$\\$$$$$$  |  $$$$$$\ "
echo "| $$$$$    \$$\  $$ | $$| $$| $$  | $$ /      $$| $$  | $$ | $$ __ | $$    $$ "
echo "| $$_____   \$$ $$  | $$| $$| $$__/ $$|  $$$$$$$| $$  | $$ | $$|  \| $$$$$$$$ "
echo "| $$     \   \$$$   | $$| $$| $$    $$ \$$    $$| $$  | $$  \$$  $$ \$$     \ "
echo " \$$$$$$$$    \$     \$$ \$$ \$$$$$$$   \$$$$$$$ \$$   \$$   \$$$$   \$$$$$$$ "
echo.
echo "Script par EvilDante"
echo.
echo 1 - Ping
echo 2 - Vidage du cache DNS
echo 3 - Creation MSGvirus .vbs
echo 4 - Quitter le programme
echo.
set choiceinput=
set /p choiceinput= Fait ton choix :
if %choiceinput%==1 goto choice1
if %choiceinput%==2 goto choice2
if %choiceinput%==3 goto choice3
if %choiceinput%==4 goto exit

:choice1
cls
set adresse=
set /p adresse= Merci de bien rentrer l'adresse du site (www.exemple.com) :
ping -4 -n 3 %adresse%
echo.
pause
cls
goto start

:choice2
cls
timeout /t 5 >nul
ipconfig /flushdns
echo.
timeout /t 2 >nul
echo Cache DNS vidé avec succès.
pause
cls
goto start

:choice3
cls
set nomDuFichier=
set /p nomDuFichier= Entrez le nom du fichier (sans extension) : 
if "%nomDuFichier%"=="" (
    echo Vous devez entrer un nom de fichier valide !
    pause
    cls
    goto choice3
)

set texteMessage=
set /p texteMessage= Entrez le texte du message : 
if "%texteMessage%"=="" (
    echo Vous devez entrer un texte valide !
    pause
    cls
    goto choice3
)

echo Set WshShell = WScript.CreateObject("WScript.Shell") > %nomDuFichier%.vbs
echo Do >> %nomDuFichier%.vbs
echo WshShell.PopUp "%texteMessage%", 3, "Virus MSG", 64 >> %nomDuFichier%.vbs
echo Loop >> %nomDuFichier%.vbs

echo.
echo Le fichier %nomDuFichier%.vbs a ete cree avec succes avec le message suivant :
echo "%texteMessage%"
pause
cls
goto start

:exit
color F
cls
exit /b
