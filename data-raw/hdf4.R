dir.create("inst/extdata", recursive = TRUE)
f <-  "https://raw.githubusercontent.com/rouault/gdal_coverage/trunk_with_coverage/autotest/gdrivers/data/hdifftst2.hdf"
download.file(f, file.path("inst", "extdata", basename(f)), mode = "wb")
