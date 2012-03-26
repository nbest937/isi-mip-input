#! /usr/bin/env Rscript --vanilla

http <- "http://vre1.dkrz.de:8080/thredds/fileServer/isi_mipEnhanced"
model <- c( "HadGEM2-ES", "IPSL-CM5A-LR", "WATCH_Forcing_Data")
scenario <- c( "historical", "rcp4p5", "rcp8p5")
var <- c( "tasmax", "tasmin", "pr", "rsds")
years <- c( "1960", "1961-1970", "1971-1980", "1981-1990", "1991-2000", "2001-2005")

df <- expand.grid( model= model[ -1], scenario= scenario, var= var, years= years)


write( with( df, sprintf( "%s/%s/%s/%s/%s_bced_1960_1999_%s_%s_%s.zip",
                  http, model, scenario, var, var, model, scenario, years)),
      file= "")
     
      
## curl <- getCurlHandle( cookiejar= "cookies.txt",
##                        userpwd= "isimip-user:isimip1234",
##                        verbose= TRUE)

## attempt <- getURL( "http://vre1.dkrz.de:8080/thredds/fileServer/isi_mipEnhanced/HadGEM2-ES/historical/huss/huss_bced_1960_1999_hadgem2-es_historical_1961-1970.zip", curl= curl)

## attempt <- getURL( "http://vre1.dkrz.de:8080/thredds/fileServer/isi_mipEnhanced/HadGEM2-ES/rcp4p5/tasmax/tasmax_bced_1960_1999_hadgem2-es_rcp4p5_2006-2010.zip", curl= curl)
