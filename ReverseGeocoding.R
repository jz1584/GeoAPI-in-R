library(ggmap)
library(RCurl)
library(RJSONIO)
library(plyr)



  loc4url <- paste(rev(location), collapse = ",")
  url_string <- paste("http://maps.googleapis.com/maps/api/geocode/json?latlng=", 
                      loc4url, sensor4url, sep = "")
url_string <- URLencode(url_string)
connect <- url(url_string)
  rgc <- fromJSON(paste(readLines(connect), collapse = ""))
  close(connect)
 



getGeoData <- function(latlng, api_key){ 
  geo_data <- getURL(paste("https://maps.googleapis.com/maps/api/geocode/json?","latlng=",
                           latlng,"&key=",api_key,sep="")) 
  geo_data <- fromJSON(geo_data) 
  return(geo_data$results[[1]])
}


a<-as.numeric(geocode('277 Bedford Ave, Brooklyn, NY 11211'))


dat.locationDetail<-getGeoData(paste(rev(a), collapse = ","),api_key = 'xxxxxxx')















