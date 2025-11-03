curriculum-vitae
================

My curriculum vitae

Debian dependencies
-------------------

```bash
apt install typst
apt install fonts-roboto fonts-adobe-sourcesans3 fonts-font-awesome
```

Building the CVs & Cover Letters (Typst)
----------------------------------------

```bash
# Build all CVs and cover letters discovered in the repo
$ make

# Build in parallel
$ make -j

# Resulting files (examples)
$ ls *.pdf
CV_CARPENTIER_en.pdf  CV_CARPENTIER_fr.pdf  CL_CARPENTIER_en.pdf  CL_CARPENTIER_fr.pdf
```

Watching changes
----------------

```bash
# Watch English CV with evince
$ make watch-cv-en

# Watch French cover letter with evince
$ make watch-cover-fr

# Use a different PDF viewer
$ make watch-cv-en PDF_VIEWER=okular
```

Template reference: [modern-cv 0.9.0 on Typst Universe](https://typst.app/universe/package/modern-cv/)
