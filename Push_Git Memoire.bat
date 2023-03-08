ECHO off
color 00
set Rep_Commum=%~dp0MEMOIRE 2
::cd %Rep_Commum%

:debut
cls
ECHO [1] Faire un git pull
ECHO [2] Faire un git push
ECHO [3] Quitter
set /p choix=Resultat :

if /I "%choix%" == "1" (goto pull)
if /I "%choix%" == "2" (goto push)
if /I "%choix%" == "3" (goto exit)
if /I "%choix%" == "4" (goto test)
goto :debut

:pull
git pull https://github.com/Pinkywhisky/MemoireM2 master
ECHO git pull fait !
pause
goto debut

:push
git add .
git commit -m memoire
git push https://github.com/Pinkywhisky/MemoireM2 master
ECHO Mise a jour faite !
pause
goto debut

:exit
exit

:test
echo %Rep_Commum%
pause
goto debut

::git config --global user.email "jllsla@free.fr"