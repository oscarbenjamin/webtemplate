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
