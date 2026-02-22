#!/bin/bash

# Quick deployment script for albertoluis.com

echo "🚀 Alberto Luis Website Deployment"
echo "=================================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

# Check if remote exists
if ! git remote | grep -q origin; then
    echo ""
    echo "🔗 No remote found. Let's add your GitHub repository."
    echo ""
    read -p "Enter your GitHub username: " username
    read -p "Enter repository name (default: albertoluis.com): " reponame
    reponame=${reponame:-albertoluis.com}
    
    git remote add origin "https://github.com/$username/$reponame.git"
    echo "✅ Remote added: https://github.com/$username/$reponame.git"
else
    echo "✅ Remote already configured"
fi

# Add and commit all changes
echo ""
echo "📝 Adding and committing changes..."
git add .
git commit -m "Update website - $(date +%Y-%m-%d)"

# Push to GitHub
echo ""
echo "🚀 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📍 Your site will be live at:"
echo "   https://YOUR-USERNAME.github.io/REPO-NAME/"
echo ""
echo "🌐 To use custom domain (albertoluis.com):"
echo "   1. Go to repo Settings → Pages"
echo "   2. Add custom domain: albertoluis.com"
echo "   3. Configure DNS (see README.md)"
echo ""
