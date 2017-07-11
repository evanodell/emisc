


#' Strip out most non-alphanumeric characters from variables
#'
#' Removes all alphanumeric characters except for periods and underscores ('.' and '_'), as these are often used in variable names.
#'
#' @param df The dataframe, tibble, etc, with the variables you want to tidy.
#'
#' @return A dataframe, tibble, etc, with new and consistent cases for variable names.
#' @export
#'
#' @examples \dontrun{
#'
#' df <- tidy_variable(df)
#'
#'}

tidy_variables <- function(df) {

  names(df) <- gsub("[[:~!@#$%^&*(){}+:\"<>?:,/;'\\[\\]]]-=", "", names(df))
  
  df

}


