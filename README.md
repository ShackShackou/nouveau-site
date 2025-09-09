# Site Shackers - Instructions de Déploiement

## Contenu du site
Ce dossier contient la copie complète du site shackers.xyz prête à être déployée sur un nouveau domaine.

## Fichiers inclus
- `index.html` - Page principale
- Fichiers CSS (styles du site)
- Fichiers JavaScript (fonctionnalités)
- `portal.382b05b5.webm` - Vidéo d'arrière-plan
- `favicon-32x32.png` - Icône du site

## Options de déploiement

### Option 1: Hébergement traditionnel (FTP)
1. Connectez-vous à votre hébergeur via FTP (FileZilla ou autre)
2. Uploadez tous les fichiers de ce dossier dans le répertoire public (www, public_html, ou htdocs)
3. Votre site sera accessible à votre-domaine.com

### Option 2: GitHub Pages (Gratuit)
1. Créez un compte GitHub si vous n'en avez pas
2. Créez un nouveau repository
3. Uploadez tous ces fichiers
4. Allez dans Settings > Pages
5. Activez GitHub Pages sur la branche main
6. Votre site sera accessible à username.github.io/repository-name

### Option 3: Netlify (Gratuit)
1. Allez sur netlify.com
2. Glissez-déposez ce dossier entier sur leur interface
3. Votre site sera instantanément en ligne avec une URL Netlify
4. Vous pouvez connecter votre propre domaine gratuitement

### Option 4: Vercel (Gratuit)
1. Créez un compte sur vercel.com
2. Uploadez ce dossier
3. Déployement automatique

### Option 5: Surge.sh (Gratuit et rapide)
1. Installez Node.js si pas déjà fait
2. Ouvrez un terminal dans ce dossier
3. Tapez: `npx surge`
4. Suivez les instructions

## Domaine personnalisé
Pour utiliser votre propre domaine :
1. Achetez un domaine chez un registrar (OVH, Gandi, Namecheap, etc.)
2. Configurez les DNS vers votre hébergement
3. Attendez la propagation DNS (jusqu'à 48h)

## Support
Si vous avez des questions, vérifiez que tous les fichiers sont bien uploadés et que les chemins sont corrects.