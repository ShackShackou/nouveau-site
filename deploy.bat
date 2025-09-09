@echo off
echo ===================================
echo  DEPLOIEMENT DU SITE SHACKERS
echo ===================================
echo.

echo Choisissez une option de deploiement:
echo.
echo 1. Ouvrir l'explorateur de fichiers (pour upload FTP manuel)
echo 2. Deployer sur Surge.sh (gratuit, necessite Node.js)
echo 3. Preparer pour GitHub (creer un zip)
echo 4. Tester localement avec Python
echo 5. Quitter
echo.

set /p choice="Entrez votre choix (1-5): "

if "%choice%"=="1" (
    echo Ouverture du dossier...
    explorer .
    echo.
    echo Uploadez tous ces fichiers sur votre serveur FTP dans le dossier public_html ou www
    pause
    goto end
)

if "%choice%"=="2" (
    echo.
    echo Deploiement sur Surge.sh...
    echo Assurez-vous que Node.js est installe
    echo.
    npx surge
    pause
    goto end
)

if "%choice%"=="3" (
    echo.
    echo Creation d'une archive ZIP pour GitHub...
    powershell Compress-Archive -Path * -DestinationPath ../shackers-site.zip -Force
    echo.
    echo Archive creee: ../shackers-site.zip
    echo Vous pouvez maintenant l'uploader sur GitHub
    pause
    goto end
)

if "%choice%"=="4" (
    echo.
    echo Lancement du serveur local...
    echo Ouvrez votre navigateur sur http://localhost:8000
    echo Appuyez sur Ctrl+C pour arreter le serveur
    echo.
    python -m http.server 8000
    pause
    goto end
)

if "%choice%"=="5" (
    goto end
)

echo Choix invalide!
pause

:end
echo.
echo Termine!