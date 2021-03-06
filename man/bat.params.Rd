% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BatDat.R
\docType{data}
\name{bat.params}
\alias{bat.params}
\title{Modeling parameters for 6 species of hibernating bats.}
\format{a dataset containg 22 measurements for 12 species
\describe{
  \item{mass}{mass of the animal (g)}
  \item{RMR}{resting metabolic rate (volume \eqn{O^2}mL/h/g)}
  \item{TMRmin}{minimum metabolic rate during torpor (volume \eqn{O^2}mL/h/g)}
  \item{Teu}{euthermic temperature  (degrees C)}
  \item{Tlc}{lower critical temperature (degrees C)}
  \item{Ttormin}{Temperature at which TMRmin is achieved (degrees C)}
  \item{Ceu}{conductance during euthermic temperatures (ml\eqn{O^2}/g/C)}
  \item{Ct}{conductance during torpor (ml\eqn{O^2}/g/C)}
  \item{S}{specific heat of tissue (ml\eqn{O^2}/g/C)}
  \item{ttormax}{maximal length of time for a bout of torpor (hours)}
  \item{teu}{time spent euthermic during a bout of torpor (hours)}
  \item{WR}{warming rate from torpor to euthermic temperature degrees (C/hour)}
  \item{CR}{cooling rate from euthermic temperature to torpor degrees (C/hour)}
  \item{rEWL}{rate of evaporative water loss (mg/hr per dWVP per cm2)}
  \item{mrPd}{increased rate of TMRmin dure to fungal infection}
  \item{aPd}{increase in total EWL as a function of fungal growth}
  \item{rPd}{increase in area-specific EWL due to infection}
  \item{pMass.i}{estimated threshold of water loss for arrousal infected bats
  (proportion lean mass)}
  \item{pMass}{estimated threshold of water loss for arrousal in uninfected bats
  (proportion lean mass)}
  \item{pFly}{proportion of time spent flying during euthermic arrousals (hours)}
  \item{pLean}{proportion of lean mass to total mass}
  \item{pFat}{proportion fat to total mass}
}}
\usage{
bat.params
}
\description{
A dataset containing information regarding morphometrics, euthermic and torpor metabolic rates of
12 species of hibernating bats.
}
\details{
Within this data set, and generally through out the package
\code{T} will represent a temperature value, while \code{t} will represent
a time value.

Naming of variables is largely drawn from the "Physiological
Ecology and Energetics of Bats" by Speakman and Thomas contained within
Bat Ecology.

The data in contained within is composed of data gleaned from the literature,
as well as data generated through the SERDP project and in conjunction with
collaboraters in Canada.
}
\references{
Haymen et al. 2016; Menzies et al. 2016
}
\seealso{
\code{data("mylu.params")}, \code{data("fung.params")}

Other Data: \code{\link{fung.params}}
}
\keyword{datasets}
