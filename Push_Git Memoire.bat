:: On n'affiche les lignes de commandes
@echo off

:: On initialise la variable "erreur" à "0"
set erreur="0"
set lienGit = "https://github.com/Pinkywhisky/MemoireM2"

:: On place un pointeur
:debut
:: on nettoie la fenêtre de l'invite de commande
cls
:: Si la variable "erreur" est égale à 1, on demande d'entrer 1 ou 2 
if /I %erreur% == "1" (echo Merci de faire le choix 1 ou 2 !)
:: On écrit les choix et les actions proposées
ECHO [1] Faire un git pull
ECHO [2] Faire un git push
:: On attend une entrée qui sera stockée dans la variable "choix"
:: On écrira "Resultat :"
set /p choix=Resultat :
:: Si la variable "choix" est égale à 1 alors va au pointeur nommé "pull"
if /I "%choix%" == "1" (goto pull)
:: Si la variable "choix" est égale à 2 alors va au pointeur nommé "push"
if /I "%choix%" == "2" (goto push)
:: On initialise la variable "erreur" à 1
set erreur="1"
:: On va au pointeur nommé "debut"
goto :debut

:: on place un pointeur nommé "pull"
:pull
:: On effectue des lignes de commandes pour recevoir
:: Les modifications du site Github
git pull %lienGit% master
ECHO Mise a jour faite dans le dossier local !
:: On attend l'action de l'utilisateur
pause
:: On quitte le programme
exit

:: on place un pointeur nommé "push"
:push
set debut="%date% %time%"
:: On effectue des lignes de commandes pour envoyer
:: Les modifications sur le site Github
git add .
git commit -m "memoire %date% %time%"
git push %lienGit% master
set fin="%date% %time%"
ECHO Mise a jour faite sur github !
echo Debut du programme %debut%
echo Fin du programme %fin%
:: On attend l'action de l'utilisateur
pause
:: On quitte le programme
exit