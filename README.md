# Alberto Luis - Personal Website

Modern, interactive personal website with CV and blog.

## 🚀 Features

- **Homepage** - Professional landing page with highlights
- **Interactive CV** - Clickable links to companies, universities, and institutions
- **Blog** - Ready for finance insights and articles
- **Responsive** - Looks great on all devices
- **Fast** - No frameworks, pure HTML/CSS/JS

## 📦 What's Inside

```
albertoluis-website/
├── index.html          # Homepage
├── cv.html            # Interactive CV page
├── blog.html          # Blog (ready for posts)
├── styles.css         # All styles
└── README.md          # This file
```

## 🌐 Deployment to GitHub Pages

### Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com)
2. Click "New Repository"
3. Name it: `albertoluis.com` (or any name)
4. Make it **Public**
5. **DON'T** initialize with README (we already have files)
6. Click "Create repository"

### Step 2: Push Your Code

Open Terminal in the `albertoluis-website` folder and run:

```bash
# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit - personal website"

# Add your GitHub repo (replace YOUR-USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR-USERNAME/albertoluis.com.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** (top right)
3. Click **Pages** (left sidebar)
4. Under "Source", select **main** branch
5. Click **Save**
6. Wait ~1 minute

Your site will be live at: `https://YOUR-USERNAME.github.io/albertoluis.com/`

### Step 4: Connect Custom Domain (albertoluis.com)

1. **Buy the domain** at [Namecheap](https://www.namecheap.com) or [GoDaddy](https://www.godaddy.com)

2. **Add domain to GitHub:**
   - Go to your repo → Settings → Pages
   - Under "Custom domain", enter: `albertoluis.com`
   - Click Save
   - Check "Enforce HTTPS"

3. **Configure DNS at your domain registrar:**
   
   Add these DNS records:

   **For apex domain (albertoluis.com):**
   ```
   Type: A
   Name: @
   Value: 185.199.108.153
   
   Type: A
   Name: @
   Value: 185.199.109.153
   
   Type: A
   Name: @
   Value: 185.199.110.153
   
   Type: A
   Name: @
   Value: 185.199.111.153
   ```

   **For www subdomain:**
   ```
   Type: CNAME
   Name: www
   Value: YOUR-USERNAME.github.io
   ```

4. **Wait 24-48 hours** for DNS to propagate (usually much faster)

## 📄 Adding Your CV PDF

1. Export your CV as `alberto-luis-cv.pdf`
2. Place it in the `albertoluis-website` folder
3. Commit and push:
   ```bash
   git add alberto-luis-cv.pdf
   git commit -m "Add CV PDF"
   git push
   ```

The "Download PDF" button will now work!

## ✏️ Updating Content

### Update CV:
Edit `cv.html` and push changes:
```bash
git add cv.html
git commit -m "Update CV"
git push
```

### Add Blog Posts:
We'll set up a blog system later. For now, the blog page is a placeholder.

## 🎨 Customization

### Change Colors:
Edit the CSS variables in `styles.css`:
```css
:root {
    --primary-color: #2563eb;  /* Change this */
    --secondary-color: #1e40af;  /* And this */
}
```

### Change Hero Gradient:
Edit the `.hero` background in `styles.css`:
```css
.hero {
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}
```

## 🆘 Troubleshooting

**Site not loading?**
- Check that GitHub Pages is enabled
- Verify the branch is set to `main`
- Clear your browser cache

**Custom domain not working?**
- DNS can take up to 48 hours
- Check DNS records are correct
- Try visiting `www.albertoluis.com` instead

**PDF download not working?**
- Make sure `alberto-luis-cv.pdf` is in the root folder
- Check filename matches exactly in `cv.html`

## 📧 Contact

Questions? Reach out to al.luis.campos@gmail.com

---

Built with 🐍 Mamba mentality
