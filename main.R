#Main

#see Thor ex on github and week2notes

#===== [SYSTEM] =======

R.version.string
#"R version 3.5.1 (2018 - 07 - 02)"

#create object of working directory
working.dir <- getwd()

 #download packages


#===== [FILE MANAGEMENT] =====

#stored names of folders into an object
output.folder.names <- c("raw.data", "clean.data", "analysis")

#for loop combo with if function that asks whether the each position of 
#output.folder.names exists as a file and if it's true that it doesn't exist
#it will create it.
for(i in 1:length(output.folder.names)) {
  if(file.exists(output.folder.names[i]) == FALSE) 
    dir.create(output.folder.names[i])
}

#**wanna try n make subfolders (graph, tables and test in analysis)

#Make path names for each folder

#create paths as empty objects
p.analysis <- NA
p.clean <- NA
p.raw <- NA
#concenate created path objects into object
paths.bigdata <- c(p.analysis, p.clean, p.raw) 

#for loop that generates path for each folder and assigns path to corresponding
#position in paths.proto
for (i in 1:length(output.folder.names)) {
  paths.bigdata[i] <- paste(working.dir, "/", output.folder.names[i], "/", 
                          sep = "")
  
} 
#paths.bigdata should now contain each pathway stored in the same order as 
#output.folder.names.

paths.bigdata



#=====[CREATE RAW] ======

create.cvs()

