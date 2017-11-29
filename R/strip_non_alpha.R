


#' strip_non_alpha
#' 
#' 
#' Strip out most non-alphanumeric characters from variables. Removes all 
#' alphanumeric characters except for periods and underscores ('.' and '_'), 
#' as these are often used in variable names.
#'
#' @param df The dataframe, tibble, etc, with the variables you want to tidy.
#'
#' @return A dataframe, tibble, etc, with new and consistent cases for 
#' variable names.
#' @export
#'
#' @examples \dontrun{
#' 
#' names(df)
#' #[1] "name_with_brackets[]"                "$$name_with_dollar_sign"            
#' #[3] "name_&&with&&_ambersand::_and_colon" "name_'with\"_quote" 
#' 
#' df <- strip_non_alpha(df)
#' 
#' names(df)
#' #[1] "name_with_brackets"             "name_with_dollar_sign"    
#' #[2] "name_with_ambersand_and_colon"  "name_with_quote" 
#'
#'}

strip_non_alpha <- function(df) {

  names(df) <- stringi::stri_replace_all_regex(str=names(df), pattern="[\\:~!@#$%^&*(){}+:\"<>?:,/;'\\u005B\\u005D]", replacement="")
  
  df

}


