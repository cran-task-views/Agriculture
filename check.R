#!/usr/bin/env Rscript
# needs to adapted for our use cases

# Maintenance script to check CTV packages, URLs, and formatting.

library("ctv")
library("httr")
library("xml2")
library("magrittr")

unlink("Agriculture.html")

ctvFile <- "Agriculture.md"
stopifnot(file.exists(ctvFile))

message("Building HTML and opening for viewing")
ctv::ctv2html(ctvFile)
htmlFile <- gsub(".md", ".html", ctvFile, fixed = TRUE)
xml <- read_xml(htmlFile)
browseURL(htmlFile)


message("Checking packages...")
packages <- check_ctv_packages(ctvFile)
packagesIssues <- lengths(packages) != 0
if (any(packagesIssues)) {
  warning("The packages need updated", call. = FALSE, immediate. = TRUE)
  print(packages[packagesIssues])
}


message("Checking Date...")
date_node <- xml_find_all(xml, "//meta[@name='DC.issued']")
sprintf("Today is %s", Sys.Date())
sprintf("This was last updated %s", xml_attr(date_node, "content"))
if (Sys.Date() != xml_attr(date_node, "content")) {
  warning("Don't forget to update the version to today's date", call. = FALSE, immediate. = TRUE)
} else {cat("Date looks correct!")}

# not working 2023-04
# message("Checking URLs...")
# # note that many links come up error when they do work fine:
# working_urls <- c("https://github.com/cran-task-views/Agriculture", "https://sisinta.inta.gob.ar/", "https://pubs.acs.org/doi/10.1021/acs.est.9b03554", "https://agrorproject.shinyapps.io/agror_shiny/", "https://dx.doi.org/10.1002/bimj.202100212", "https://repository.ias.ac.in/89299", "https://doi.org/10.1111%2Fj.1469-1809.1936.tb02143.x", "https://doi.org/10.1534%2Fg3.119.400373", "https://doi.org/10.1534%2Fg3.116.032359", "https://doi.org/10.1534%2Fg3.118.200728", "https://doi.org/10.2134%2Fagronj2018.06.0362", "https://doi.org/10.4141%2Fcjps88-018", "https://doi.org/10.2135%2Fcropsci1966.0011183X000600010011x", "https://doi.org/10.2135%2Fcropsci1971.0011183X001100020006x", "https://acsess.onlinelibrary.wiley.com/doi/10.3835/plantgenome2018.02.0013", "https://doi.org/10.2136/sssaj1980.03615995004400050002x", "https://doi.org/10.1029/WR012i003p00513", "https://acsess.onlinelibrary.wiley.com/hub/books", "https://ashs.org/store/ListProducts.aspx?catid=3379250", "https://my.apsnet.org/APSStore/", "https://onlinelibrary.wiley.com/doi/10.1111/j.1469-1809.1936.tb02143.x", "https://doi.org/10.3835%2Fplantgenome2016.02.0013", "https://doi.org/10.1093/bioinformatics/bts444", "https://doi.org/10.1002/pld3.53", "https://doi.org/10.1093/gigascience/giy154", "https://acsess.onlinelibrary.wiley.com/doi/book/10.2134/appliedstatistics", "https://ashs.org/store/ListProducts.aspx?catid=337925&ftr=", "https://www.nature.com/articles/ng.2314", "https://www.nature.com/articles/ng.548", "https://doi.org/10.1038%2Fhdy.1972.87", "https://my.apsnet.org/APSStore/") 
# 
# urls_all <- unique(xml_find_all(xml, "//a[@href]") %>% xml_attr(., "href")) 
# urls <- urls_all[intersect(grep("^#.", urls_all, invert = TRUE),
#                  grep("https://CRAN.R-project.org/.", urls_all, invert = TRUE))]
# httr::set_config(timeout(1e6)) 
# url_test <- rep(NA, length(urls))
# for(i in 1:length(urls)) {
#   url_test[i] = try(http_error(urls[i], config(ssl_verifypeer = 0L, ssl_verifyhost = 0L)))
# }
# 
# url_test <- sapply(urls, try(http_error), config(ssl_verifypeer = 0L, ssl_verifyhost = 0L))
# cat("here are the URL's that did failed the test:\n")
# urls[url_test == "TRUE" & !(urls %in% working_urls)] # %>% datapasta::vector_paste()
# cat("here are the URL's with error messages:\n")
# urls[grep("^Error.", url_test)] 





