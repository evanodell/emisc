



#' A function to strip Byte Order Marks (BOM) out of JSON data that is 
#' returned from some online API calls.
#'
#' @param df The API response to remove BOMs from.
#' @export
strip_bom <- function(df) {
  
  got <- as.character(df)
  
  got <- tidy_bom(got)
  
  got
  
}