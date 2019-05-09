#'@title Install all packages
#'@description Installs a list of packages
#'@examples
#'\dontrun{
#'pkgs <- c('usethis', 'packrat')
#'install_pkg_list(pkgs)
#'}
install_pkg_list <- function(pkg_list) {
    
    new.pkg <- pkg_list[!(pkg_list %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, repo="http://cran.rstudio.com/")
    
}

#'@title Use packrat
#'@description uses packrat to set up libraries. 
#'Installs devtools, covr, roxygen2, assertthat, testthat, formatR, lintr, and styler automatically.
#'Also installs utilsR from github.com/holmesjoli/utilsR
#'@examples
#'\dontrun{
#' use_packrat()
#'}
use_packrat <- function() {
    
    if ("packrat" %in% installed.packages()[, "Package"]) {
        
        packrat::init(infer.dependencies = F)
        
        install.packages(c("devtools", "covr", "roxygen2", "assertthat", "testthat", "formatR", "lintr", "styler"),
                         repo = "http://cran.rstudio.com/")
        devtools::install_github("holmesjoli/utilsR")
        
    }
    
    
}
