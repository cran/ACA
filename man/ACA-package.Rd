\name{ACA-package}
\alias{ACA-package}
\alias{ACA}
\docType{package}
\title{
Abrupt Change-Point or Aberration Detection in a Series of Points
}
\description{
Offers an interactive function for the detection of breakpoints in series.
}
\details{
\tabular{ll}{
Package: \tab ACA\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-03-08\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
}
\author{ Daniel Amorese <amorese@ipgp.fr>,

Maintainer: Daniel Amorese <amorese@ipgp.fr>
 }
\references{
D. Amorese, "Applying a change-point detection method on frequency-magnitude distributions", \emph{Bull. seism. Soc. Am.} (2007) 97, doi:10.1785\/0120060181

Lanzante, J. R., "Resistant, robust and non-parametric techniques for the analysis of climate data: Theory and examples, including applications to historical radiosonde station data", \emph{International Journal of Climatology} (1996) 16(11), 1197-1226
}
\keyword{ package }
%\seealso{}
%\note{}
\examples{
    SDScan(namefi=system.file("extdata","soccer.data.txt",package="ACA"),
    xleg="Time", yleg="Goals per game", titl="Goals in England: 1888-2014", onecol="n", daty="n")
}
