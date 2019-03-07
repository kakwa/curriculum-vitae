curriculum-vitae
================

My curriculum vitae

Debian dependancies
-------------------

```bash
# on debian Sid (2019-03) 
sudo aptitude install texlive-full fonts-font-awesome
```
Notes: 

* package texlive-full is too much, but it's the quickest
option for lazy people like me.

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
