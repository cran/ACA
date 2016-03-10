\name{SDScan}
\alias{SDScan}
\title{ Serial Data Scanner }
\description{
     This is the workhorse function of the ACA. It detects significant change-points in serial data.
}
\usage{
SDScan(namefi = NULL, xleg = NULL, yleg = NULL, titl = NULL, onecol = NULL, daty = NULL)
}
\arguments{
  \item{namefi}{ a character string specifying the data file to be loaded }
  \item{xleg}{ character. The x-label of the plot } 
  \item{yleg}{ character. The y-label of the plot } 
  \item{titl}{ character. The title of the plot } 
  \item{onecol}{ character. Option for the data format. If \code{onecol} is "y", it is assumed that the input file is a single column file (varying parameter) else the input file is a 2 column file (independent variable, varying parameter) } 
  \item{daty}{ character. Option for the data processing. If \code{daty} is "y", the scan of the series is launched with the gradients (rates of change) of the data else it is launched with the data itself } 
}
\details{
  if one of the arguments above is NULL, then the user will be prompted to enter the missing value. \code{SDScan()} produces two files: the \emph{SDS.res} file includes the statistics for each detected breakpoint; the \emph{SDS.png} file is the plot of the series where the detected breakpoints are shown. In the \emph{SDS.res} file, there is a line for each 
breakpoint: it includes the x and y values for the breakpoint, its index in the series, the noise variance due to the discontinuity, the noise variance due to the trend, the noise variance due to the discontinuity (posterior value), the noise variance due to the trend (posterior value), the change-point Signal-to-Noise Ratio (posterior value), the biweight mean of the left segment, the biweight mean of the right segment. Values are separated by the ''&'' symbol }
\references{
D. Amorese, "Applying a change-point detection method on frequency-magnitude distributions", \emph{Bull. seism. Soc. Am.} (2007) 97, doi:10.1785\/0120060181

Lanzante, J. R., "Resistant, robust and non-parametric techniques for the analysis of climate data: Theory and examples, including applications to historical radiosonde station data", \emph{International Journal of Climatology} (1996) 16(11), 1197-1226
}
\author{ Daniel Amorese <amorese@ipgp.fr>

Maintainer: Daniel Amorese <amorese@ipgp.fr>
  }
%- \note{ } 
%- \seealso{ }
\examples{
    SDScan(namefi=system.file("extdata","soccer.data.txt",package="ACA"),
    xleg="Time", yleg="Goals per game", titl="Goals in England: 1888-2014", onecol="n", daty="n")
 }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ htest, robust, nonparametric, ts }
