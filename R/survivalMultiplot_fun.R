#' survivalMultiplot
#'
#' \code{survivalMultiplot} Creates a strip figure containing survival plots for infected
#'  and uninfected species and a difference histogram
#'
#' @param surv.stk raster result stack from \code{\link{survivalRaster}}
#' @param dist.map shapefile distribution of the species being modeled
#' @param nights a raster layer reprensenting the length of winter measured in nigths
#' @param species.name name of the species for plotting (generally a 4 letter
#' @param save.name optional argument. When a path is passed files will save to that
#' location with provided name. If left as defult 'NULL' will print to plot window
#' @param ... passed to \code{\link[ggplot2]{ggsave}}
#' @details Strip figures are a combination of \code{\link{survivalPlotter}} and
#' \code{\link{survivalHistogram}} all tied together to create one neat strip conviently displaying
#' the resutlts for a single species in a single function
#'
#' @family Plot Functions
#' @seealso \code{\link{survivalRaster}}; \code{\link{survivalPlotter}}; \code{\link{survivalHistogram}};
#' \code{\link{dangerZone}}
#' @export
survivalMultiplot <- function(surv.stk, dist.map, nights, species.name, save.name, ...){
  ##function for creating super cool strip plots of the SurvivalMaps and Diff hist all in one.
  no.inf <- survivalPlotter(surv.stk = surv.stk, WNS = F, dist.map = dist.map, nights = nights)
  yes.inf <- survivalPlotter(surv.stk = surv.stk, WNS = T, dist.map = dist.map, nights = nights)
  sp.diff <- survivalHistogram(surv.stk = surv.stk,
                               dist.map = dist.map,
                               species.name = species.name,
                               nights = nights)

  if(!is.null(save.name)){
    multi.plot <- grid.arrange(no.inf, yes.inf, sp.diff,
                                          ncol=3)
    ggsave( filename = save.name,
            plot = multi.plot,
            device = "pdf",
            width = 11,
            height = 6,
            units = "in",
            ...)
    return(invisible(NULL))}

  return(fig.list <- c(no.inf, yes.inf, sp.diff))
}
