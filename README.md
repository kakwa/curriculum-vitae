curriculum-vitae
================

My curriculum vitae

Debian dependencies
-------------------

```bash
apt install typst
apt install fonts-roboto fonts-adobe-sourcesans3 fonts-font-awesome
```

Building the CVs (Typst)
------------------------

```bash
$ make CV_LANG=fr

# Watch English version with evince
make watch CV_LANG=en

# Watch French version with evince  
make watch CV_LANG=fr

# Use a different PDF viewer
make watch CV_LANG=en PDF_VIEWER=okular

# build all the languages in // (Typst)
$ make -j

# the CVs are located in the repo root
$ ls *.pdf
CV_CARPENTIER_en.pdf  CV_CARPENTIER_fr.pdf
```

Template reference: [modern-cv 0.9.0 on Typst Universe](https://typst.app/universe/package/modern-cv/)
