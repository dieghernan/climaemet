test_that("Check aemet_api_query", {
  expect_warning(get_metadata_aemet("a"))
  expect_warning(get_data_aemet("a"))


  skip_if_not(aemet_detect_api_key(),
    message = "Skip. No API Key"
  )

  url <- "/api/valores/climatologicos/inventarioestaciones/todasestaciones"
  expect_silent(get_metadata_aemet(url))
  expect_message(get_metadata_aemet(url, verbose = TRUE))
})
