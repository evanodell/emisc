
#' Write R data to a LaTeX file
#' 
#' Write R data to a LaTeX file as individual lines. Similar functions, such 
#' as \code{latex} in \code{Hmisc}, write data to a LaTeX table, but there 
#' may be instances where you don't want data in a table, hence this function. 
#' Columns will printed in the order specified. The function adds a newline 
#' between each item printed.
#' 
#' This function does not add any LaTeX syntax or markup to the data being 
#' printed. To add markup prior to printing, use the 
#' \code{\link{latex_markup}} function.
#' 
#'
#' @param df The dataframe, data.table, tibble, etc, containing the data to 
#' write to LaTeX.
#' @param file_name File name of the tex file to write to. Overwrites any 
#' existing files with the same name. If \code{file_name} does not end with 
#' ".tex" it will be appended to the file name.
#' @param ... One or more unquoted, comma separated, variable names to write 
#' to LaTeX. If blank, all variables will be written to LaTeX. 
#' @param append If \code{TRUE}, appends data to existing file of the same 
#' name. If \code{FALSE}, overwrites any existing file of the same name. 
#'
#' @export
#'
#' @examples \dontrun{
#' 
#' #write_latex(iris, file_name = "iris.tex", Species, Petal.Width)
#' 
#' }

write_latex <- function(df, file_name, ..., append = FALSE) {
  
  lvars <- rlang::quos(...)
  
     if (all(names(lvars) %in% names(lvars))==FALSE) {
     
     rlang::abort("Please ensure all variables listed are correct.")
   
     }
  
  if(purrr::is_empty(lvars)==FALSE){
    
    df <- dplyr::select(df, ...)
  
  } 
  
  
  if(stringi::stri_endswith_fixed(file_name, pattern = ".tex")==FALSE){
    
    file_name <- paste0(file_name, ".tex")
    
  }
  

  write.table(df, file=file_name, append = append, sep="\n\n", eol="\n\n", row.names=FALSE, col.names = FALSE, quote=FALSE)
  
}


#' @rdname write_latex
#' @export
write_latex_lines <- write_latex
