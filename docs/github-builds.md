---
title: GitHub PDF Builds
nav_order: 8
---

# Automatic PDF Builds on GitHub

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

Your copy of this template includes a GitHub Actions workflow (`.github/workflows/build.yml`). Every time you push, GitHub compiles `main.pdf` in the cloud with a full TeX Live installation, using the same `.latexmkrc` as your computer.

This gives you:

- **An early warning.** If the build breaks, you see a red ✗ on the commit and get an email.
- **A PDF for every version**, without committing the PDF itself.
- **A backup build** that doesn't depend on your laptop.

## Download the PDF of a build

1. Open your repository on GitHub and click the **Actions** tab.
2. Click the latest run with a green ✓.
3. Scroll down to **Artifacts** and click **thesis-pdf**. This downloads a zip file containing `main.pdf`.

Or with the [GitHub CLI](https://cli.github.com/):

```bash
gh run download --name thesis-pdf
```

Artifacts are kept for 90 days and are only visible to people with access to the repository.

## Create a permanent version (release)

For milestones, such as the draft you send your supervisor or the final submission, create a tag:

```bash
git tag v1.0-draft
git push origin v1.0-draft
```

The workflow attaches `main.pdf` to a new **Release** on GitHub, where it stays permanently.

## Private repositories

Most students keep their thesis repository **private**. The workflow works there too. GitHub's free plan includes a monthly quota of Actions minutes for private repositories, and one build takes only a few minutes ([see GitHub pricing](https://github.com/pricing)). If you don't want cloud builds, delete `.github/workflows/build.yml`.

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
