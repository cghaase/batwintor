# Batch Script functions
library(batwintor)


WNS_run <- function(species){
  ## Function to run a single DynamicEnergyPD
  ## Change Env as needed

  data("bat.params")
  bat.p <- BatLoad(x = bat.params, species)

  data("fung.params")
  fung.ch <- FungSelect(choose =  "Chaturvedi")

  env <- BuildEnv(temp = c(-5,20),
                  pct.rh = c(20,100),
                  range.res.temp = .5,
                  range.res.rh = 1,
                  twinter = 10,
                  winter.res = 24)
  z <- DynamicEnergyPd(env = env,
                  bat.params = bat.p,
                  fung.params = fung.ch)
  write.csv(z, file = file.path("D:", "Dropbox",
                                "batwintor_aux", "Run_10_12",
                                paste0(species, "DNEpd.csv")), row.names = F)

}


WNS_batch <- function(species.l){
  ## Function for running a batch of WNS scripts (from bat.param file)
  ## species.l <- should be row.names(bat.params)
  ## out.dir is a foulder where it should output too (will auto name the files)
  # out.name <- file.path(out.name,
  #                       paste0(species.l, "DNEpd.csv"))
  library(snowfall)
  sfInit(parallel=TRUE, cpus = 3)
  sfLibrary('batwintor', character.only = T)
  sfExportAll()
  sfLapply(species.l, WNS_run)
  sfStop(nostop = FALSE)

}

species.l <- row.names(bat.params)
out.name <- file.path("D:", "Dropbox",
                      "batwintor_aux", "Run_10_12")
WNS_batch(species.l = species.l)

