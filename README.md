# katbjo.github.io

Personal site of Katrín Björnsdóttir, plant ecologist. Static HTML and CSS, published with GitHub Pages from the repository root.

## Pages

- `index.html` – home: who I am, publications, recent talks, contact
- `cv.html` – curriculum vitae (`cv.pdf` is the downloadable version)
- `publications.html` – peer-reviewed articles, manuscripts, theses (`publications.pdf`)
- `style.css` – the one stylesheet; fonts are self-hosted in `assets/fonts/`

## Editing

Edit the HTML directly. CV and publication entries are plain `<dl class="entries">` rows:

```html
<div class="row"><dt>2026</dt><dd><span class="authors">…</span> <span class="title">…</span> <span class="venue">…</span> <a class="doi" href="https://doi.org/…">doi:…</a></dd></div>
```

## PDFs

The PDFs are printed from the HTML pages with headless Chromium, so they always match the site:

```sh
sh scripts/make-pdfs.sh
```

A GitHub Action (`.github/workflows/pdfs.yml`) also regenerates and commits them whenever `cv.html`, `publications.html` or `style.css` change on the default branch.
