# Command line Interface Arguments

#' @title Parse arguments
#' @description Parses different options from the command line
#' @examples 
#' \dontrun{
#' parseArguments()
#' }
parseArguments <- function() {
    
    p <- optparse::make_option(c("-p", "--project_name"), action = "store", help = "Project path/Project Name, e.g. Packages/R/my_new_package")
    
    option_list <- list(p)
    
    opt_parser <- optparse::OptionParser(option_list = option_list)
    opt <- optparse::parse_args(opt_parser)
    
    return(opt)
    
}
