// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// AUC_calc
double AUC_calc(NumericVector X, NumericVector W);
RcppExport SEXP _tdROC_AUC_calc(SEXP XSEXP, SEXP WSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type X(XSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type W(WSEXP);
    rcpp_result_gen = Rcpp::wrap(AUC_calc(X, W));
    return rcpp_result_gen;
END_RCPP
}
// AUC_calc2
NumericVector AUC_calc2(NumericVector X, NumericVector W1, NumericVector W2);
RcppExport SEXP _tdROC_AUC_calc2(SEXP XSEXP, SEXP W1SEXP, SEXP W2SEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< NumericVector >::type X(XSEXP);
    Rcpp::traits::input_parameter< NumericVector >::type W1(W1SEXP);
    Rcpp::traits::input_parameter< NumericVector >::type W2(W2SEXP);
    rcpp_result_gen = Rcpp::wrap(AUC_calc2(X, W1, W2));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_tdROC_AUC_calc", (DL_FUNC) &_tdROC_AUC_calc, 2},
    {"_tdROC_AUC_calc2", (DL_FUNC) &_tdROC_AUC_calc2, 3},
    {NULL, NULL, 0}
};

RcppExport void R_init_tdROC(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
