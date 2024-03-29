% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.tdROC.cr.R
\name{plot_tdROC_cr}
\alias{plot_tdROC_cr}
\title{Plot the time-dependent ROC curve with competing risk}
\usage{
plot_tdROC_cr(
  x,
  lwd = 2,
  xlab = "1-specificity",
  ylab = "sensitivity",
  xlim = c(0, 1),
  ylim = c(0, 1),
  col = c("red", "blue"),
  main = "ROC curve",
  abline = T,
  ...
)
}
\arguments{
\item{x}{the object returned by \code{tdROC.cr()}.}

\item{lwd}{user-specified line width. Default is \code{2}.}

\item{xlab}{user-specified label for x-axis. Default is "\code{1-specificity}".}

\item{ylab}{user-specified label for y-axis. Default is "\code{sensitivity}".}

\item{xlim}{user-specified limit for x axis. Default is \code{c(0,1)}.}

\item{ylim}{user-specified limit for y axis. Default is \code{c(0,1)}.}

\item{col}{user-specified color for ROC curve. Defualt is "\code{c("red", "blue")}" for the primary event and competing event.}

\item{main}{user-specified title for the plot. Default is "\code{ROC curve}"}

\item{abline}{user-specified reference diagnol line. Default is \code{True}.}

\item{\dots}{for future methods}
}
\value{
Returns several plots of ROC curve. For competing risk data, there are two definitions of controls introduced by Zheng et al, which was listed below

 \deqn{
 \text{Definition A:} \text{Case} k:T \le \tau, \delta = k; \text{Control}_A: (T>\tau)\cup (T \le \tau \cap \delta \ne k)
 }

 \deqn{
 \text{Definition B:} \text{Case} k:T \le \tau, \delta = k; \text{Control}_B: (T>\tau)
 }

 For more details about above two definitions, please read details of function \code{tdROC.cr}.
 If the \code{tdROC.cr} object comes without bootstrap result, the ROC curve for above two definitions will be plotted together and indicated by the specified \code{col}.
 If the \code{tdROC.cr} object with bootstrap result, one more ROC curve with confidence interval will be plotted for each definition.
}
\description{
This function reads in object returned by \code{tdROC.cr()} and plot ROC curve for it.
}
\examples{
library(survival)
data(Melano)
tdROC.cr_res <- tdROC.cr(
  X = Melano$thick, Y = Melano$time,
  delta = Melano$status, tau = 1800, nboot = 10
)
plot_tdROC_cr(tdROC.cr_res)

}
\references{
Zheng Y, Cai T, Jin Y, Feng Z. Evaluating prognostic accuracy of biomarkers under competing risk. Biometrics. 2012;68(2):388-396. doi:10.1111/j.1541-0420.2011.01671.x
}
