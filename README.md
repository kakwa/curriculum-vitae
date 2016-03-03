curriculum-vitae
================

My curriculum vitae

Debian dependancies
-------------------

```bash
# on debian Sid (2014-02) 
sudo aptitude install texlive-full fonts-font-awesome
```
Notes: 

* package texlive-full is too much, but it's the quicker
option for lazy people like me.

Building the CVs
----------------

```bash
# build a specific language
$ make pdf LANG=fr

# build all the language in // 
$ make -j 42 

# the CVs are located in the out directory
$ ls out/
CV_CARPENTIER_en.pdf  CV_CARPENTIER_fr.pdf
```

Adding a language
-----------------

Just create a new directory, put cv.tex inside it and symlink the picture if needed.

Changing the ID picture
-----------------------

Just replace `picture/ID.jpg`.
