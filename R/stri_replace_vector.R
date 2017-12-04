




#' A simple wrapper around \code{replace_all_fixed_vector}
#' 
#' When using the \code{vector_stri_replace_all_fixed_}, which is suitable 
#' for programming, the variables \code{from} and \code{to} must be character 
#' vectors of equal length. 
#'
#' @param x Character vector with strings to search in
#' @param ... One or more strings for search patterns and their 
#' replacement pattern.
#' @param from A character vector defining search patterns
#' @param to A character vector with replacements for matched patterns
#' @param progress If \code{TRUE}, displays a progress bar. Defaults to TRUE.
#'
#' @return A character vector with strings replaced.
#'
#' @export 
#' @rdname vector_stri_replace_all_fixed
vector_stri_replace_all_fixed <- function(x, ..., progress=TRUE) {
  
  rep_vars <- rlang::dots_list(...)
  
  #from <- as.character(from)
  #to <- as.character(to)
  
  if (length(rep_vars)==0) {
    abort("")
  }
  
  
  if(progress==TRUE){
    pb <- progress::progress_bar$new(total = length(rep_vars))
  }
  
  for (i in 1:length(rep_vars)){
    
    x <- stringi::stri_replace_all_fixed(x, names(rep_vars)[i], rep_vars[[i]], vectorize_all = FALSE)
    
    if(progress==TRUE){
      pb$tick()
    }
    
  }
  
  x
  
}

#' @export 
#' @rdname vector_stri_replace_all_fixed

vector_stri_replace_all_fixed_ <- function(x, from, to, progress=TRUE) {
  
  from <- as.character(from)
  to <- as.character(to)
  
  if (length(from)!=length(to)) {
    abort("Please ensure both lists are of equal length")
  }
  
  
  if(progress==TRUE){
    pb <- progress::progress_bar$new(total = length(from))
  }
  
  for (i in 1:length(from)){
    
    x <- stringi::stri_replace_all_fixed(x, from[[i]], to[[i]])
    
    if(progress==TRUE){
      pb$tick()
    }
    
  }
  
  x
  
}
