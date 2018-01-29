Web Template
============

This repo is a template for to use for setting up a quick website with github.
I will use it to show how to set things up and to record how to do the
different things that I will typically want to do in each website.

Pandoc
------

We use pandoc to compile the markdown (.md) files in the src folder into html
files in the docs folder. We then commit the .html files, push them to github
and ask github to serve from the docs folder. Other pieces such as style.css
and images are stored directly in the docs folder. The src folder is just for
the .md files.

The reason we do this rather than using github's Jekyll setup is that it means
we can use Mathjax and have simpler control over the html/css setup.

Using
-----

The sequence to use this is
```
    $ git clone git@github.com:oscarbenjamin/webtemplate.git
    $ vim src/index.md   # edit the .md source
    $ make               # recompile all .md to .html
    $ git commit -am 'Update index.md'
    $ git push
```

The result can now be seen at oscarbenjamin.github.io/webtemplate

If copying this repo to a new repo, you need to go into the repo settings on
github and set it to serve from the docs directory. (It may take some time
before index.html is served at the root URL but you can still access named
files - e.g. just append /index.html to the URL.)

To add new pages just add a new .md file in src. The make.sh script will
automatically pick this up.

Modifying
---------

The file src/template.html is used by pandoc as the template for each page
when compiling each .md file. Change this and docs/style.css to change the
basic layout, colourscheme, etc of the site.

TODO
----

* Add detection of subdirectories under docs in make.sh
* Figure out how to reference equations and include example
