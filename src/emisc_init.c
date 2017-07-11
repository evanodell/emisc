#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
 Check these declarations against the C/Fortran source code.
 */

/* .Call calls */
extern SEXP emisc_tidy_bom(SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"emisc_tidy_bom", (DL_FUNC) &emisc_tidy_bom, 1},
  {NULL, NULL, 0}
};

void R_init_emisc(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}