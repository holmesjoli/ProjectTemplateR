source("R/helpers.R")

pkgs <- c("usethis", "packrat", "optparse")
install_pkg_list(pkgs)

opts <- parseArguments()

if (!is.null(opts[["project_name"]])) {
  usethis::proj_activate(file.path(opts[["project_name"]]))
  use_packrat()
  usethis::use_rcpp()
  usethis::use_readme_md()
  usethis::use_roxygen_md()
  usethis::use_testthat()
  usethis::use_git()

} else {
  stop("Must specify project name")
}

utilsR::create_dirs("R")




