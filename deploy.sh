#!/bin/bash

echo "==================================="
echo "  DEPLOIEMENT DU SITE SHACKERS"
echo "==================================="
echo ""

echo "Choisissez une option de deploiement:"
echo ""
echo "1. Ouvrir le dossier (pour upload FTP manuel)"
echo "2. Deployer sur Surge.sh (gratuit, necessite Node.js)"
echo "3. Deployer sur Netlify CLI"
echo "4. Tester localement avec Python"
echo "5. Creer une archive tar.gz"
echo "6. Quitter"
echo ""

read -p "Entrez votre choix (1-6): " choice

case $choice in
    1)
        echo "Ouverture du dossier..."
        if [[ "$OSTYPE" == "darwin"* ]]; then
            open .
        else
            xdg-open .
        fi
        echo ""
        echo "Uploadez tous ces fichiers sur votre serveur FTP dans le dossier public_html ou www"
        ;;
    2)
        echo ""
        echo "Deploiement sur Surge.sh..."
        echo "Assurez-vous que Node.js est installe"
        echo ""
        npx surge
        ;;
    3)
        echo ""
        echo "Deploiement sur Netlify..."
        npx netlify deploy --dir=. --prod
        ;;
    4)
        echo ""
        echo "Lancement du serveur local..."
        echo "Ouvrez votre navigateur sur http://localhost:8000"
        echo "Appuyez sur Ctrl+C pour arreter le serveur"
        echo ""
        python3 -m http.server 8000
        ;;
    5)
        echo ""
        echo "Creation d'une archive tar.gz..."
        tar -czf ../shackers-site.tar.gz *
        echo "Archive creee: ../shackers-site.tar.gz"
        ;;
    6)
        echo "Au revoir!"
        exit 0
        ;;
    *)
        echo "Choix invalide!"
        ;;
esac

echo ""
echo "Termine!"