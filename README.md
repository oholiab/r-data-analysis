Data Analysis Exercises
=======================

This it the product so far of my studies in to data and correlation analysis.
It's an example of using SVD (Singular Value Decomposition) on a DTM
(Document-Text Matrix) in order to find similar documents and similar words.

This example plots words into a transformed space and labels them. As you can
see the two outliers in an otherwise sparse data set that are easily obvious 
are the words "and" and "the". Still lots to be done but it shows how the method can be applied to extract meaningful data from an RSS feed about linguistics.

Implementation
==============

I'm using the R programming language as it is built for matrices, so commands
like svd() and diag() already exist (although I am in the process of writing my
own svd function to ensure my own understanding). 

All required libraries are installed by setup.R

Usage
=====

Once R is installed (`apt-get install r-base` on any sensible operating system
;]) run R and on the interactive prompt:

  > source("setup.R")
	> source("plotbeebwords.R")

which will install all libraries and run. You will then be left in an
interactive environment in which you can poke around with the data structures
which you can list with `ls()`
