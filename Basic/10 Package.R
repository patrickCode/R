#Packages
library() #lists are installed packages
packages <- installed.packages() #shows all packages installed
packages

search() #get all attached packages attached to the session

#Load package
library("parallel") #quoutes are not mandatory, but casing is sensitive. #library(parallel)
search()

#Unload/detach package
detach(package:parallel, unload=TRUE) #unload is FALSE by default. If unload is true then the package will be detached as well removed from memory. Else it will continue to stay in memory
search()
#Load unavialble package
load(newpackage) #Should give error since package is not installed

#Check for package availability
if(!require("newpackage")) {  #Returns TRUE if "newpackage" is installed
  #Download and install package
}

setRepositories() #Set new Repositories. Type the number codes of all the repositories that need to be set
install.packages("plyr") #Install single package
install.packages(c("gplot2", "randomForest", "RColorBrewer")) #Install multiple packages

#Install from Github
install.packages("devtools") #This package is needed to installing other packages from github
library(devtools)
install_github("ramnathv/slidify") #Package Name, Author Name
#Alternate way to install from github
install.packages("githubinstall")
library(githubinstall)
install.packages("stringi") #Needed for installing slidify
githubinstall("slidify")

#Managing Packages
update.packages() #Prompts for each package that can be updated
update.packages(ask = FALSE) #Update all packages where update is available without prompt
remove.packages("ggplot2") #Remove single package
remove.packages(c("ggplot2", "sos")) #Remove multiple package