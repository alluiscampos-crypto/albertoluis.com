# ConvertKit Setup Guide

## Step 1: Create ConvertKit Account
1. Go to https://convertkit.com
2. Sign up (free up to 1,000 subscribers)
3. Complete account setup

## Step 2: Create Form in ConvertKit
1. Go to **Grow** → **Landing Pages & Forms**
2. Click **Create New** → **Form** (not landing page)
3. Choose **Inline** or **Modal** form type
4. Customize the form:
   - Add fields: Name, Email
   - Design it to match your brand (purple/gold colors)
5. **Save** the form

## Step 3: Set Up Welcome Email (Automation)
1. Go to **Automate** → **Visual Automations**
2. Click **New Automation**
3. Choose **Start from scratch**
4. Set trigger: **Subscribes to a form** → Select your form
5. Add action: **Send email**
6. Create two versions:
   - **Spanish version** (for Spanish-speaking subscribers)
   - **English version** (for English-speaking subscribers)

### Spanish Email Template
```
Subject: Bienvenido a FirstWho — Lo que realmente importa

Hola {{first_name}},

Gracias por unirte a FirstWho.

Este no es un blog más sobre finanzas o análisis de datos. Aquí escribo sobre las decisiones que tomamos, las personas que nos acompañan, y lo que aprendemos en el camino — tanto en lo profesional como en lo personal.

¿Qué puedes esperar?
• Reflexiones sobre estrategia, análisis, y pensamiento crítico
• Experiencias del día a día en finanzas corporativas
• Lo que realmente importa cuando levantamos la mirada del Excel

Publicaré con regularidad, sin spam. Solo contenido que valga la pena tu tiempo.

Un abrazo,
Alberto Luis
First Who

---
P.D. — Si tienes algún tema que te gustaría que explore, responde a este email. Leo todo.
```

### English Email Template
```
Subject: Welcome to FirstWho — What Really Matters

Hi {{first_name}},

Thank you for joining FirstWho.

This isn't just another blog about finance or data analysis. I write about the decisions we make, the people who walk beside us, and what we learn along the way — both professionally and personally.

What can you expect?
• Reflections on strategy, analysis, and critical thinking
• Day-to-day experiences in corporate finance
• What really matters when we lift our gaze from the spreadsheet

I'll publish regularly, no spam. Only content worth your time.

Best,
Alberto Luis
First Who

---
P.S. — If there's a topic you'd like me to explore, just reply to this email. I read everything.
```

## Step 4: Get Form Code
1. After creating the form, click **Publish**
2. Choose **HTML**
3. Copy the embed code
4. You'll need the **Form ID** (looks like a number)

## Step 5: Alternative - Use ConvertKit API
Instead of embedding their form, we can use their API to submit subscribers from your custom form.

1. Go to **Settings** → **Advanced** → **API & Webhooks**
2. Copy your **API Key** and **API Secret**
3. Note your **Form ID** from the form settings

## Integration Options

### Option A: Direct Embed (Simplest)
Replace your current subscribe.html form with ConvertKit's embedded form.

### Option B: Custom Form + API (Recommended)
Keep your beautiful custom form, send data to ConvertKit API via JavaScript.

**Which option do you prefer?**
- Option A = Faster, but ConvertKit styling
- Option B = Your design, but needs API integration

---

## After Setup
- Test the automation by subscribing with a test email
- Verify welcome emails arrive
- Tag subscribers by language if needed (add custom field for language preference)

## Broadcasting New Posts
When you publish a new post:
1. Go to **Send** → **Broadcasts**
2. Write your email announcement
3. Send to all subscribers
4. Include link to the new post

---

Let me know when you have your ConvertKit account ready and I'll help with the integration! 🐍
