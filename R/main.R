opts <- parseArguments()

if (!is.null(opts[["project_name"]])) {
    pth <- file.path(getwd(), opts[["project_name"]])
    usethis::create_package(pth)
    usethis::proj_activate(pth)
    use_packrat()
    usethis::use_roxygen_md()
    usethis::use_rcpp()
    usethis::use_readme_md()
    usethis::use_testthat()
    usethis::use_travis()
    usethis::use_git()
    utilsR::create_dirs("R", "man")
    
} else {
    stop("Must specify project name")
}

