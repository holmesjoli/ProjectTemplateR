proj_root <- file.path(normalizePath(dirname(".")), "ProjectTemplateR")

source(file.path(proj_root, "R", "helper_functions.R"))
source(file.path(proj_root, "R", "cli_args.R"))

pkgs <- c("usethis", "packrat", "optparse")
install_pkg_list(pkgs)
 
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
    usethis::use_git()

} else {
    stop("Must specify project name")
}

utilsR::create_dirs("R", "man")
