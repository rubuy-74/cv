<h1 align="center">
    CV Hosting w/Cloudflare Workers
</h1>

<p align="center">
  <img src="https://img.shields.io/badge/cloudflare-workers-orange" alt="Cloudflare Workers" />
  <img src="https://img.shields.io/badge/platform-any-lightgrey" alt="Platform" />
</p>

<p align="center">
  A simple solution to host your CV/Resume as a PDF using <b>Cloudflare Workers</b> and <b>GitHub Actions</b>. 
</p>

## Getting Started

### Prerequisites

- A GitHub account
- A Cloudflare account
- A domain name (that uses Cloudflare's nameservers)
- Your CV in PDF format

> You don't have to use [Typst](https://typst.app/) to create your CV. The only file needed is the .pdf file.


### Setup Instructions

1. **Fork this repository**
   ```bash
   git clone https://github.com/rubuy-74/cv
   cd cv
   ```

2. **Create API Tokens (for R2 Access and Workers Access)**
    - R2 Access Keys (for file upload): 
        - **In the Cloudflare Dashboard**: R2 -> Manage Buckets -> (your_bucket) -> Settings -> Create Access Key
        - R2_ACCESS_KEY_ID
        - R2_SECRET_ACCESS_KEY
    - Cloudflare API Token (for deploying workers):
        - In the Cloudflare Dashboard: My Profile -> API Token -> Create Token
        - Permissions:
            1. Account -> Worker Scripts -> Edit
            2. Account -> Workers R2 Storage -> Edit
        - CLOUDFLARE_API_TOKEN
        - CLOUDFLARE_ACCOUNT_ID

3. **Configure Cloudflare Worker**
    - Login to your Cloudflare dashboard
    - Create a new Worker
    - In "Settings" > "Custom Domains", add your desired subdomain (e.g., cv.yourdomain.com)
    - Note down your Account ID and Worker name


4. **Set up GitHub Secrets**
   In your forked repository, add these secrets under Settings > Secrets:
    - `R2_ACCESS_KEY_ID`: Your R2 Access Key ID
    - `R2_SECRET_ACCESS_KEY`: Your R2 Secret Access Key
    - `CLOUDFLARE_API_TOKEN`: Your Cloudflare API token
    - `CLOUDFLARE_ACCOUNT_ID`: Your Cloudflare account ID


5. **Update Configuration**
   Edit the `wrangler.toml` file:
   ```toml
   name = "your-worker-name"
   account_id = "your-account-id"
   ```

6. **Add Your CV**
   - Replace `rubem-cv.pdf` with your own CV file
   - Update the filename in `wrangler.toml` if needed

7. **Push Changes**
   ```bash
   git add .
   git commit -m "Initial setup"
   git push
   ```

The GitHub Action will automatically deploy your CV to Cloudflare Workers.

## Project Structure

```text
├── .github/
│   └── workflows/
│       └── deploy.yml       # GitHub Actions workflow
├── src/
│   └── index.js            # Worker code
├── wrangler.toml           # Cloudflare Worker configuration
└── your-cv.pdf            # Your CV file
```

## Updating Your CV

1. Replace the PDF file with your updated CV
2. Commit and push the changes
3. GitHub Actions will automatically deploy the new version

---

<p align="center">
  <sub>Made with ❤️ by <a href="https://github.com/rubuy-74">rubuy-74</a></sub>
</p>
