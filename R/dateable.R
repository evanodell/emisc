

#' A function that locates all variables with "date" in the name (ignoring case), and converts them to POSIXct. Works on both dates and datetimes.
#'
#' @param df The tibble with the dates to be dated.
#' @export
dateable <- function(df) {
  
  date_vars <- grepl('date', colnames(df), ignore.case=TRUE)
  
  df[date_vars] <- lapply(df[date_vars], function(y) gsub("T", " ", y))
  
  df[date_vars] <- lapply(df[date_vars], as.POSIXct, format = "%Y-%m-%d %H:%M:%S")
  
  df
  
}