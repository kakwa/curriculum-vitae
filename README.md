curriculum-vitae
================

My curriculum vitae

Debian dependencies
-------------------

```bash
# Could probably be minimized
apt install typst
apt install fonts-roboto fonts-source-sans-pro fonts-font-awesome
```

Building the CVs (Typst)
------------------------

```bash
$ make CV_LANG=fr

# build all the languages in // (Typst)
$ make -j

# the CVs are located in the repo root
$ ls *.pdf
CV_CARPENTIER_en.pdf  CV_CARPENTIER_fr.pdf
```

Template reference: [modern-cv 0.9.0 on Typst Universe](https://typst.app/universe/package/modern-cv/)
