# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
packages <-jsonlite::read_json("renv_oldlock")
cran_packages <- packages$Packages %>% keep(~.x$Source=="Repository")
bioc_packages <- packages$Packages %>%keep(~.x$Source=="Bioconductor")
gh_packages <- packages$Packages %>%keep(~.x$Source=="GitHub")
map_chr(gh_packages,"Remotes") %>% walk(usethis::use_dev_version)
walk(gh_packages,useth)

udp <- safely(use_dev_package)
up <- safely(use_package)
use_pkg <- function(x){
  pr <- up(x)
  if(!is.null(pr$error))
    udp(x)
}
}
