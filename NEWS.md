

# emisc 0.0.6

## New function

Introducing `vector_stri_replace_all_fixed()`, a wrapper for `stri_replace_all_fixed` in the `stringi` package.


# emisc 0.0.5

## Function changes

`tidy_variables()` is deprecated in favour of `strip_non_alpha()`. `strip_non_alpha()` uses `stringi` for its internals, which is faster than the base R functions used in `tidy_variables()`.

Added option to append data to `write_latex()`, rather than only being able to overwrite existing files.


# emisc 0.0.4

## Function Wrapper

`write_latex()` now has a `write_latex_lines()` wrapper to make it more clear what the function does.

Rearranged the order of parameters in `write_latex()` from `(df, ..., file_name)` to `(df, file_name, ...)`

# emisc 0.0.3

## New Functions

Added the `write_latex()` and `latex_markup()` functions.

`write_latex()` saves all or selected dataframe columns to a LaTeX file in rows, rather than as a table.

`latex_markup()` adds LaTeX markup (e.g. section tags) to selected columns to assist with printing.

# emisc 0.0.2

## Bug Fixes

Fixed compilation errors on macos.

# emisc 0.0.1

Announcing the creation of the `emisc` package.

