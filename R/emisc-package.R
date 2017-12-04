
#' emisc: Evan Odell's various functions
#' 
#' emisc: A collection of various R functions I've created. They may or may 
#' not be useful to anyone else, and may or may not  duplicate existing work. 
#' Includes functions to remove byte order marks  (BOMs), write data to LaTeX 
#' as lines rather than tables, and changing variable naming conventions.
#'
#' @docType package
#' @name emisc
#' @useDynLib emisc
#' @importFrom purrr is_empty
#' @importFrom rlang exprs quos abort
#' @importFrom utils write.table
#' @import dplyr
#' @import stringi
#' @import progress
#' @importFrom Rcpp sourceCpp
NULL