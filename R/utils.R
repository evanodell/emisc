

standardise_file_name <- function(file_name, input = TRUE) {
  if (!is.character(file_name))
    return(file_name)

  if (length(file_name) > 1) {
    return(paste(file_name, collapse = "\n"))
  }

  if (grepl("\n", file_name))
    return(file_name)

}


