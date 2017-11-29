

# emisc 0.0.4.9000

## Function changes

`tidy_variables()` is deprecated in favour of `strip_non_alpha()`


# emisc 0.0.4

## Function Wrapper

`write_latex()` now has a `write_latex_lines` wrapper to make it more clear what the function does.

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

