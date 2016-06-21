library(testthat)
context("gdal_hdf4")


test_that("we can open the file", {
  expect_equal(hdf4(), "GDALReadOnlyDataset")
})
