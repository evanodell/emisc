% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_latex.R
\name{write_latex}
\alias{write_latex}
\alias{write_latex_lines}
\title{Write R data to a LaTeX file}
\usage{
write_latex(df, file_name, ..., append = FALSE)

write_latex_lines(df, file_name, ..., append = FALSE)
}
\arguments{
\item{df}{The dataframe, data.table, tibble, etc, containing the data to 
write to LaTeX.}

\item{file_name}{File name of the tex file to write to. Overwrites any 
existing files with the same name. If \code{file_name} does not end with 
".tex" it will be appended to the file name.}

\item{...}{One or more unquoted, comma separated, variable names to write 
to LaTeX. If blank, all variables will be written to LaTeX.}

\item{append}{If \code{TRUE}, appends data to existing file of the same 
name. If \code{FALSE}, overwrites any existing file of the same name.}
}
\description{
Write R data to a LaTeX file as individual lines. Similar functions, such 
as \code{latex} in \code{Hmisc}, write data to a LaTeX table, but there 
may be instances where you don't want data in a table, hence this function. 
Columns will printed in the order specified. The function adds a newline 
between each item printed.
}
\details{
This function does not add any LaTeX syntax or markup to the data being 
printed. To add markup prior to printing, use the 
\code{\link{latex_markup}} function.
}
\examples{
\dontrun{

#write_latex(iris, file_name = "iris.tex", Species, Petal.Width)

}
}
