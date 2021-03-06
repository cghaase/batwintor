#' Example of model results for \emph{Myotis lucifugus}
#'
#' A dataset showing an example of the data generated by \code{DynamicEnergyPD}
#' on the species \emph{Myotis lucifugus} generated as described in the vignette
#' \code{vignette(WorkThrough)}.
#'
#' @format a dataset containing 288886 observations of 13 varriables
#' \describe{
#'   \item{Ta}{Ambient temperature in degrees C}
#'   \item{humidity}{Precent relative humidity}
#'   \item{g.fat.consumed}{Grams of fat consumed up to that time point by a bat
#'     infected with WNS}
#'   \item{prec.ar}{precent of the energy consumed by an infected bat due to arrousal}
#'   \item{Pd.growth}{Area colonized by \emph{Pseudogymnoascus destructans} (only for
#'     infected bats) in cm^2}
#'   \item{time}{Time in hours}
#'   \item{Prop.tor}{Proportion of time spent in torpor}
#'   \item{Prop.Ar}{Porportion of time spent at euthermia (aroused)}
#'   \item{Tb}{Body temperature of the bat}
#'   \item{n.g.fat.consumed}{Grams of fat consumed up to that time point by a bat not
#'     infected with WNS}
#'   \item{n.prec.ar}{precent of the energy consumed by an uninfected bat due to arrousal}
#'   \item{surv.inf}{Logical for the infected bat being alive}
#'   \item{surv.null}{Logical for the uninfected bat being alive}
#'   }
#' @details Throughout the package and within this data set \code{null} is used to describe
#' and uninfected animal.
#' @seealso \code{data("mylu.params")}, \code{data("fung.params")}, \code{data("bat.params")}
"mylu.mod"
'%!in%' <- function(x,y)!('%in%'(x,y))
if("mylu.mod.rda" %!in% list.files("data/")){
  mylu.mod <- fread("raw_data/myluMod.csv")
  devtools::use_data(mylu.mod, overwrite = T)
}
