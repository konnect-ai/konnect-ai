#!/bin/bash
# Script de déploiement KONNECT.AI pour macOS/Linux

cd "$(dirname "$0")"

echo "📁 Ajout des fichiers au commit Git..."
git add .

echo "📝 Création du commit..."
git commit -m 'Mise à jour du site KONNECT.AI'

echo "🚀 Push vers le dépôt distant..."
git push origin main

echo "✅ Déploiement terminé."
