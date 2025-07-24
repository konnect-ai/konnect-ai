@echo off
cd /d %~dp0
echo 📁 Passage au dossier : %cd%

echo.
echo 📥 Vérification de l'état du dépôt...
git status

echo.
echo 📁 Ajout des fichiers modifiés...
git add .

echo.
echo 📝 Création du commit...
git commit -m "Mise à jour depuis Windows"

echo.
echo 🚀 Envoi sur GitHub...
git push origin master

echo.
echo ✅ Déploiement terminé ! Vérifie sur https://konnect-ai.vercel.app
pause
