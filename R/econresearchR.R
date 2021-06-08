econ_research <- function(directory){

  setwd(directory)
  project_txt <- "Overview of your research project"
  writeLines(project_txt, "readme.txt")

  core_folders <- c("01_administration","02_literature", "03_data", "04_dissemination")
  for (j in 1:length(core_folders)){
    dir.create(core_folders[j])}

  literature <- paste(directory, "02_literature", sep = "/")
  literature_folders <- c("01_books","02_papers", "03_others")
  for (j in 1:length(literature_folders)){
    dir.create(paste(literature, literature_folders[j], sep = "/"))
  }

  data <- paste(directory,"03_data", sep="/")

  data_folders <- c("01_raw","02_codes", "03_cleaned", "04_analysis","05_results")
  for (j in 1:length(data_folders)){
    dir.create(paste(data, data_folders[j], sep = "/"))
  }

  diss <- paste(directory, "04_dissemination", sep="/")
  diss_folders <- c("01_presentations","02_publication")
  for (j in 1:length(diss_folders)){
    dir.create(paste(diss, diss_folders[j],sep="/"))
  }

}
