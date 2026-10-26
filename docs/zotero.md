---
title: Zotero References
nav_order: 7
---

# Managing References with Zotero

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)

You can edit `references.bib` by hand. For a thesis with dozens of sources, **Zotero** is much easier: you save papers from your browser with one click, and the **Better BibTeX** plugin keeps `references.bib` updated automatically.

## 1. Install Zotero

1. Download **Zotero** from [zotero.org/download](https://www.zotero.org/download/) and install it.
2. On the same page, install the **Zotero Connector** for your browser (Chrome, Firefox, Edge or Safari). It adds a button that saves the paper you're viewing to Zotero, including the PDF when it's available.
3. Optional: create a free [Zotero account](https://www.zotero.org/user/register) to sync your library between computers. Go to **Zotero → Settings → Sync** (on Windows/Linux: **Edit → Settings → Sync**).

## 2. Install Better BibTeX

[Better BibTeX](https://retorque.re/zotero-better-bibtex/) generates stable citation keys and keeps an exported `.bib` file up to date.

1. Go to the [latest Better BibTeX release](https://github.com/retorquere/zotero-better-bibtex/releases/latest) and download the `.xpi` file.
   - **Firefox users:** right-click the link and choose **Save Link As…**, otherwise Firefox tries to install it as a browser add-on.
   - **Safari users:** right-click and choose **Download Linked File**, so the file isn't unzipped.
2. In Zotero, go to **Tools → Plugins** (older versions: **Tools → Add-ons**).
3. Click the **gear icon** → **Install Plugin From File…** and select the `.xpi` file.
4. Restart Zotero.

See the [official installation guide](https://retorque.re/zotero-better-bibtex/installation/) if anything goes wrong.

## 3. Set the citation key format

To match the template's `authorYEARkeyword` convention:

1. Open **Zotero → Settings → Better BibTeX** (Windows/Linux: **Edit → Settings → Better BibTeX**).
2. Under **Citation keys**, set the **citation key formula** to:
   ```
   auth.lower + year + shorttitle(1,0).lower
   ```
3. Existing items keep their old keys. To regenerate them, select all items, right-click and choose **Better BibTeX → Refresh BibTeX key**.

For example, Goodfellow et al. (2014), *Generative Adversarial Nets* gets the key `goodfellow2014generative`. See the [citation key documentation](https://retorque.re/zotero-better-bibtex/citing/) for other formats.

## 4. Create a collection for your thesis

1. In Zotero, right-click **My Library** → **New Collection…** and name it, for example, `thesis`.
2. Save papers into this collection with the browser connector, or drag existing items into it.

## 5. Export it to `references.bib` (auto-updating)

1. Right-click the `thesis` collection → **Export Collection…**
2. Format: **Better BibLaTeX**. This matches the template's `biblatex` + `biber` setup and keeps DOIs, URLs and non-English characters.
3. Tick **Keep updated**.
4. Click **OK** and save the file as `references.bib` in the **root of your thesis folder**, replacing the example file.

From now on, whenever you add or edit a reference in that collection, Zotero rewrites `references.bib` within a few seconds, and your next build picks it up.

You can manage your auto-exports under **Settings → Better BibTeX → Automatic export**.

## 6. Cite while writing

- **Copy a citation key:** select an item in Zotero and press `Cmd+Shift+C` / `Ctrl+Shift+C`. For this to paste a citation key, set **Settings → Export → Item Format** to **Better BibTeX Citation Key Quick Copy** (and in **Settings → Better BibTeX → Export → Quick-Copy**, choose the format you want, for example `\cite{key}`).
- **Or rely on autocomplete:** in VS Code, type `\textcite{` and LaTeX Workshop suggests keys from `references.bib`.

## Important

- **Edit references in Zotero, never directly in `references.bib`.** The file is overwritten on every export, so manual changes are lost.
- **Zotero must be running for the export to update.** If a new reference doesn't appear, check that Zotero is open.
- **Check the metadata.** Imported entries are sometimes incomplete or wrongly capitalized. Fix them in Zotero. To protect capitalization in titles (for example *GAN* or *Europe*), wrap the word in `<span class="nocase">…</span>` in the Zotero title field, or see the [Better BibTeX FAQ](https://retorque.re/zotero-better-bibtex/support/faq/).
- **Commit `references.bib` to Git** so your thesis builds on any computer, including ones without Zotero.

---

[← Documentation overview](index.md) · [Project on GitHub](https://github.com/YevaGalstyan/latex-thesis-template#readme)
