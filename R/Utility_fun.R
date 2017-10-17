#' utility functions


# Not in operator
'%!in%' <- function(x,y)!('%in%'(x,y))

# Defaults for NULL values
'%||%' <- function(a, b) if (is.null(a)) b else a

#' @import raster ggplot2
#' @importFrom deSolve lsoda
#' @importFrom data.table data.table rbindlist
#' @importFrom dplyr %>% mutate filter
#' @importFrom mixtools spEMsymloc
#' @importFrom graphics par mtext title
#' @importFrom grDevices colorRampPalette dev.print dev.off
#' @importFrom stats median
#' @importFrom utils data read.csv
NULL