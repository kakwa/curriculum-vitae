curriculum-vitae
================

My curriculum vitae

Debian dependancies
-------------------

```bash
# Could probably be minimized
apt install texlive-full fonts-font-awesome
```

Building the CVs
----------------

```bash
# build a specific language
$ make CV_LANG=fr

# build all the language in // 
$ make -j

# the CVs are located in the out directory
$ ls *.pdf
CV_CARPENTIER_en.pdf  CV_CARPENTIER_fr.pdf
```

In case of issue for one of the CV, the logs are located in directory of the CV:

```bash
cat en/cv.log
```

Adding a language
-----------------

Just create a new directory, put `cv.tex` inside it and symlink the picture if needed:

```bash
CV_LANG=ger
mkdir $CV_LANG
touch $CV_LANG/cv.tex
ln -s ../picture/ID.jpg $CV_LANG/
```

Changing the ID picture
-----------------------

Just replace `picture/ID.jpg`.
