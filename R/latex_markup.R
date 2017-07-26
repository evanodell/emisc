
#' Add LaTeX markup to R data.
#' 
#' Add LaTeX markup to R data.
#' 
#'
#' @param df The dataframe, data.table, tibble, etc, containing the data to add LaTeX markup to.
#' @param ... One or more unquoted, comma separated, variable names, with quoted Latex environment names (no backslashes or curly braces)/
#' #@param markup_style
#'
#' @export
#'
#' @examples \dontrun{
#' 
#' x <- latex_markup(iris, Species="section", Petal.Width="subsection*")#, markup_style="section")
#' 
#'  # >  head(x)
#'  #    Sepal.Length Sepal.Width Petal.Length       Petal.Width           Species
#'  #  1          5.1         3.5          1.4 \\subsection*{0.2} \\section{setosa}
#'  #  2          4.9         3.0          1.4 \\subsection*{0.2} \\section{setosa}
#'  #  3          4.7         3.2          1.3 \\subsection*{0.2} \\section{setosa}
#'  #  4          4.6         3.1          1.5 \\subsection*{0.2} \\section{setosa}
#'  #  5          5.0         3.6          1.4 \\subsection*{0.2} \\section{setosa}
#'  #  6          5.4         3.9          1.7 \\subsection*{0.4} \\section{setosa}
#' 
#'  
#' }
latex_markup <- function(df, ...) {
 
   mvars <- rlang::exprs(...)
   
   if (all(names(mvars) %in% names(df))==FALSE) {
     
     rlang::abort("Please ensure all variables listed are correct, and that they have a markup style assigned.")
   
     }
   
   if(length(mvars)!=0){
   
     for(i in 1:length(mvars)){
  
       df[[names(mvars)[i] ]] <- paste0("\\", mvars[[i]], "{", df[[names(mvars)[i] ]],"}")
       
     }
       
   }
   
  df
  
}

