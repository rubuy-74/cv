# CV Hosting with Cloudflare Workers

<p align="center">
  <img src="https://img.shields.io/badge/cloudflare-workers-orange" alt="Cloudflare Workers" />
  <img src="https://img.shields.io/badge/platform-any-lightgrey" alt="Platform" />
  <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License" />
</p>

<p align="center">
  A simple solution to host your CV/Resume as a PDF using <b>Cloudflare Workers</b> and <b>GitHub Actions</b>. 
  Get your CV online with a custom domain in minutes!
</p>

---

## 🛠 Tech Stack

- [Cloudflare Workers](https://workers.cloudflare.com/)
- [GitHub Actions](https://github.com/features/actions)
- Any PDF generation tool (Typst, LaTeX, Word, etc.)

---

## 🏗️ Getting Started

### Prerequisites

- A GitHub account
- A Cloudflare account
- A domain name (that uses Cloudflare's nameservers)
- Your CV in PDF format

### ▶️ Setup Instructions

1. **Fork this repository**
   ```bash
   git clone https://github.com/rubuy-74/cv
   cd cv
   ```

2. **Configure Cloudflare Worker**
   - Login to your Cloudflare dashboard
   - Create a new Worker
   - In "Settings" > "Custom Domains", add your desired subdomain (e.g., cv.yourdomain.com)
   - Note down your Account ID and Worker name

3. **Set up GitHub Secrets**
   In your forked repository, add these secrets under Settings > Secrets:
   - `R2_ACCESS_KEY_ID`: Your R2 Access Key ID
   - `R2_SECRET_ACCESS_KEY`: Your R2 Secret Access Key
   - `CF_API_TOKEN`: Your Cloudflare API token
   - `CF_ACCOUNT_ID`: Your Cloudflare account ID


4. **Update Configuration**
   Edit the `wrangler.toml` file:
   ```toml
   name = "your-worker-name"
   account_id = "your-account-id"
   ```

5. **Add Your CV**
   - Replace `rubem-cv.pdf` with your own CV file
   - Update the filename in `wrangler.toml` if needed

6. **Push Changes**
   ```bash
   git add .
   git commit -m "Initial setup"
   git push
   ```

The GitHub Action will automatically deploy your CV to Cloudflare Workers.

## 📁 Project Structure

```text
├── .github/
│   └── workflows/
│       └── deploy.yml       # GitHub Actions workflow
├── src/
│   └── index.js            # Worker code
├── wrangler.toml           # Cloudflare Worker configuration
└── your-cv.pdf            # Your CV file
```

## 🔄 Updating Your CV

1. Replace the PDF file with your updated CV
2. Commit and push the changes
3. GitHub Actions will automatically deploy the new version

---

## 📜 License

This project is licensed under the MIT License.

---

<p align="center">
  <sub>Made with ❤️ by <a href="https://github.com/rubuy-74">rubuy-74</a></sub>
</p>
