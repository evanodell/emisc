


#' Changing variable cases.
#'
#' A wrapper for the \code{snake_case()}, \code{camelCase()}, and \code{period.case()} functions.
#'
#' @param df The dataframe, tibble, etc, with the variables you want to tidy. 
#' @param case_style The style to convert variable names to. Accepts one of "snake_case", "camelCase" and "period.case". Defaults to "snake_case".
#'
#' @return A dataframe, tibble, etc, with new and consistent cases for variable names.
#' @export
#'
#' @examples \dontrun{
#'
#' df <- change_case(df)
#'
#'}
change_case <- function(df, case_style=c("snake_case", "camelCase", "period.case")){
  
  df <- emisc::tidy_variables(df)
  
  if(case_style=="snake_case"){
    
    df <- emisc::snake_case(df)
    
  } else if(case_style=="camelCase"){
    
    df <- emisc::camelCase(df)
    
  } else if (case_style=="period.case"){
    
    df <- emisc::period.case(df)
    
  } else {
    
    message("Please use one of 'snake_case', 'camelCase' or 'period.case' for the case_style parameter.")
    
  }
  
}

