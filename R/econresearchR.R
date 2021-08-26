
econ_research <- function(directory){

  setwd(directory)
  project_txt <- "Overview of your research project"
  writeLines(project_txt, "readme.txt")


core_folders <- c("01_administration",
	"02_literature/01_books","02_literature/02_papers", "02_literature/03_others",
	"03_data/00_archive", "03_data/01_raw","03_data/02_codes", "03_data/03_cleaned", "03_data/04_analysis",
	"03_data/04_analysis/01_tables", "03_data/04_analysis/02_graphs","03_data/05_results",
 	"04_dissemination/01_presentations", "04_dissemination/02_publication")

lapply(core_folders,dir.create,recursive = TRUE)

}
