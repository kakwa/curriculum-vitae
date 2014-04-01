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

* this cv use fonts-font-awesome, support for this 
font comes with textlive releases above 2013.

In order to use this cv with older releases, you wil have
to remove `\usepackage{moderncviconsawesome}`, `\faGithub~`
and `\faLinkedinSign~`.

Building the cv
---------------

```bash
make pdf LANG=fr

# or default language (english)
make pdf

# or the quick and dirty build script building all languages
./build.sh
```

Adding a language
-----------------

Just create a new directory and put cv.tex inside it.

Changing the ID picture
-----------------------

Just replace `picture/ID.jpg`.
