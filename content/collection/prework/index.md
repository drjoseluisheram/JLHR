---
date: "2025-06-25"
draft: false
excerpt: How to prepare ahead of time.
subtitle: ""
title: Welcome
weight: 1
---

Welcome to the _Revisiting my Doctoral Experience_ blog! I look forward to meeting you. 

Throughout this blog, I will be revisiting and deconstructing the chapters of my Doctoral Thesis. This section also includes some entrances to talk about my experience as PhD student. I hope you can enjoy these post and it will help you to decide if you want to go further with a PhD application. Furthermore, if you are interested in some of the topics that are part of this project, please do not hesitate to contact me.

## Download the thesis

My thesis is called "A Geographic Intelligence Model of Criminal Groups: A study of cargo theft on Mexican Highways". This document reflects the dreams and the hard work of many years, from very funny moments with my colleagues to frustrating nights writing and writing with no hopes of finishing it. However, as any dream, if you are willing to sacrifice and hard work, you can make it. Finishing and submitting my thesis, I can say was one of the happiest and proudest moments of my life. You can download it from [UCL Discovery - Repository](https://discovery.ucl.ac.uk/id/eprint/10188188/).

## Set up GitHub

We will be using GitHub in this workshop for version control and publishing. Sign up for a free GitHub.com account at <https://github.com/join> if you don't already have one. Also:

+ Complete these [installation instructions](https://happygitwithr.com/install-intro.html).
    
+ Test your connection between GitHub and RStudio following [these steps](https://happygitwithr.com/connect-intro.html). 
    
+ **NOTE:** We *strongly recommend* that if you are not already a fluent GitHub user you choose [HTTPS over SSH](https://happygitwithr.com/credential-caching.html).

## Brush up on markdown

Please complete this [10-minute interactive tutorial on Markdown](https://commonmark.org/help/tutorial/). 

## Installations

Please bring a laptop that has the following installed:

+ A recent version of R (>=3.6.0), which is available for free at https://cloud.r-project.org/
    
+ A recent version of RStudio Desktop (>=1.4), available for free ([RStudio Desktop Open Source License](https://www.rstudio.com/products/rstudio/download/#download)). Read up on the latest version [here](https://blog.rstudio.com/2021/01/19/announcing-rstudio-1-4/).
    
+ The R packages we will use, which you can install by connecting to the internet, opening RStudio, and running at the command line:

    ```r
    > install.packages(c("usethis", "remotes", "distill", 
                       "postcards", "blogdown"))
    ```
    
    You'll also need to install the development version of the `rmarkdown` package:
    
    ```r
    > remotes::install_github("rmarkdown")
    ```

## Install Hugo

To use blogdown, please install Hugo:
```r
> blogdown::install_hugo()
```

And ensure your current version is at least as high as:
```r
> hugo_version()
[1] ‘0.79.0’
```

## Check pandoc

The RStudio IDE bundles an updated version of pandoc- if you did install v1.4 of the IDE, you should be all set!

```r
> rmarkdown::pandoc_version()
[1] ‘2.11.3’
```