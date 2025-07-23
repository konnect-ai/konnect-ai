#!/bin/bash
# Script : add-vercel-config.sh
# 📦 Crée un .vercel.json et le pousse sur GitHub

echo "📁 Création du fichier .vercel.json..."

cat > .vercel.json <<EOF
{
  "rewrites": [
    { "source": "/(.*)", "destination": "/index.html" }
  ]
}
EOF

echo "✅ Fichier créé."

# Ajouter au commit
echo "📤 Ajout et push Git..."
git add .vercel.json
git commit -m "Ajout .vercel.json pour redirection Vercel"
git push origin master

echo "🚀 Déploiement terminé. Vercel va redéployer automatiquement."
