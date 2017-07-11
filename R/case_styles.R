
#' Convert variable names into one of three styles.
#' 
#' Convert variable names to snake_case.
#' @param df The dataframe, tibble, etc, with the variables you want to tidy. 
#' @export
#' @return A dataframe, tibble, etc, with snake_case style variable names.
#' @rdname case_styles
snake_case <- function(df) {
  
  df <- emisc::tidy_variables(df)
  
  names(df) <- gsub("\\.", "_", names(df))
  
  names(df) <- gsub("([[:lower:]])([[:upper:]])", "\\1_\\2", names(df))
  
  names(df) <- gsub("__", "_", names(df))
  
  names(df) <- tolower(names(df))
  
  df
  
}

#' Convert variable names to period.case.
#' @param df The dataframe, tibble, etc, with the variables you want to tidy. 
#' @export
#' @return A dataframe, tibble, etc, with period.case style variable names.
#' @rdname case_styles
period.case <- function(df){
  
  df <- emisc::tidy_variables(df)
  
  names(df) <- gsub("\\.\\.", ".", names(df))
  
  names(df) <- gsub("_", ".", names(df))
  
  names(df) <- tolower(names(df))
  
  df
  
}

#' Convert variable names to camelCase.
#' @param df The dataframe, tibble, etc, with the variables you want to tidy. 
#' @export
#' @return A dataframe, tibble, etc, with camelCase style variable names.
#' @rdname case_styles
camelCase <- function(df){
  
  df <- emisc::tidy_variables(df)
  
  names(df) <- gsub("(^|[^[:alnum:]])([[:alnum:]])", "\\U\\2", names(df), perl = TRUE)
  
  substr( names(df), 1, 1) <- tolower(substr(names(df), 1, 1))
  
  df
  
}