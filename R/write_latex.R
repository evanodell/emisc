
#' Write R data to a LaTeX file.
#' 
#' Write R data to a LaTeX file. Similar functions, such as \code{latex} in \code{Hmisc}, write data to a LaTeX table, but there may be instances where you don't want data in a table, hence this function. Columns will printed in the order specified. The function adds a newline between each item printed.
#' 
#' This function does not add any LaTeX syntax or markup to the data being printed. To add markup prior to printing, use the \code{\link{latex_markup}} function.
#' 
#'
#' @param df The dataframe, data.table, tibble, etc, containing the data to write to LaTeX.
#' @param ... One or more unquoted, comma separated, variable names to write to LaTeX. If blank, all variables will be written to LaTeX. 
#' @param file_name File name to write to.
#'
#' @export
#'
#' @examples \dontrun{
#' 
#' write_latex(iris, Species, Petal.Width, file_name = "iris.tex")
#' 
#' }

write_latex <- function(df, ..., file_name) {
  
  lvars <- rlang::quos(...)
  
  if(grepl(".", file_name)==FALSE){
    
    file_name <- paste0(file_name, ".tex")
    
  }
  
  if(purrr::is_empty(lvars)==FALSE){
    
    df <- dplyr::select(df, ...)
  
  } 

  write.table(df, file=file_name, sep="\n\n", eol="\n\n", row.names=FALSE, col.names = FALSE, quote=FALSE)
  
}


