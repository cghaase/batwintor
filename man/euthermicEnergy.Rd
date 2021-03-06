% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/euthermicEnergy_fun.R
\name{euthermicEnergy}
\alias{euthermicEnergy}
\title{Calculate energy per time euthermic with ambient temperature}
\usage{
euthermicEnergy(Ta, bat.params)
}
\arguments{
\item{Ta}{ambient temperature}

\item{bat.params}{list of bat parameters output from \code{\link{batLoad}}}
}
\value{
TODO find units accociated with it
}
\description{
\code{euthermicEnergy} Function calculating the energy required to
maintain euthermia for a given time and ambient temperature.
}
\examples{
##CalEnergyTimeEuthermic Example
data("mylu.params")

e <- -10:34 #temperature vector

r <- euthermicEnergy(e, mylu.params)

plot(e, r, xlab = "Temp (C)", ylab = "Energy Expended",
     main = "euthermicEnergy")
}
\seealso{
\code{\link{coolEnergy}}, \code{\link{coolTime}},
\code{\link{flyingEnergy}}, \code{\link{flyingTime}}

Other Arousal Functions: \code{\link{arousalEnergy}},
  \code{\link{arousalTime}}, \code{\link{coolEnergy}},
  \code{\link{flyingEnergy}}, \code{\link{flyingTime}}
}
