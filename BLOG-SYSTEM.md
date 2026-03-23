# Blog Subscription System

## How it works

### 1. Subscription Gate
- Anyone clicking "Blog" from the CV goes to `blog.html`
- If not subscribed → auto-redirect to `subscribe.html`
- After subscribing → stored in `localStorage` → access granted to blog

### 2. Bilingual Posts
- Each post has **ES** and **EN** versions in the same HTML
- Toggle button switches between languages
- Content managed via `data-lang` attributes
- JavaScript handles the switch

### 3. File Structure
```
albertoluis-website/
├── index.html          # Home/CV page
├── cv.html             # Full CV
├── blog.html           # Blog index (subscription-protected)
├── subscribe.html      # Subscription form
├── post-first-who.html # Blog post with ES/EN toggle
├── styles.css          # All styles
└── firstwho-logo.jpg   # Blog logo
```

### 4. Adding New Posts

**Step 1:** Create new post file (e.g., `post-new-title.html`)
- Copy structure from `post-first-who.html`
- Add Spanish content in `<div class="post-content lang-content" data-lang="es">`
- Add English content in `<div class="post-content lang-content" data-lang="en" style="display: none;">`
- Update title in both languages

**Step 2:** Add post card to `blog.html`
- Edit the JavaScript section
- Add new `<article class="blog-post-card">` before existing posts

### 5. Current Subscription System
- Uses `localStorage` (client-side only)
- No backend/database required for demo
- For production: replace with real email service (Mailchimp, ConvertKit, etc.)

### 6. Removing Subscription Requirement
If you want to make the blog public again:
- Edit `blog.html` → remove the JavaScript check
- Replace with static HTML showing posts
- Or delete `localStorage.getItem('blogSubscriber')` check

---

**Next Steps:**
- Deploy to production (Vercel)
- Consider adding real email backend for notifications
- Add RSS feed for subscribers
