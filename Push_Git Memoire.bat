echo off

set erreur="0"

:debut
cls
if /I %erreur% == "1" (echo Merci de faire le choix 1 ou 2 !)
ECHO [1] Faire un git pull
ECHO [2] Faire un git push
set /p choix=Resultat :

if /I "%choix%" == "1" (goto pull)
if /I "%choix%" == "2" (goto push)
set erreur="1"
goto :debut

:pull
git pull https://github.com/Pinkywhisky/MemoireM2 master
ECHO git pull fait !
pause
goto debut

:push
git add .
git commit -m "memoire %date% %time%"
git push https://github.com/Pinkywhisky/MemoireM2 master
ECHO Mise a jour faite !
pause
exit