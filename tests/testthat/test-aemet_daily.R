test_that("Test errors on daily clim", {
  expect_error(aemet_daily_clim(station = NULL))
  expect_error(aemet_daily_clim(verbose = "Y"))
  expect_error(aemet_daily_clim(return_sf = "Y"))
})

test_that("Test call on daily clim", {
  skip_if_not(aemet_detect_api_key(),
    message = "Skip. No API Key"
  )

  expect_silent(aemet_daily_clim())
  expect_message(aemet_daily_clim(verbose = TRUE))
  expect_true("sf" %in% class(
    aemet_daily_clim(return_sf = TRUE)
  ))
})


test_that("Test errors on daily period", {
  expect_error(aemet_daily_period(station = NULL))
  expect_error(aemet_daily_period())
  expect_error(aemet_daily_period(start = NULL))
  expect_error(aemet_daily_period(end = NULL))
  expect_error(aemet_daily_period(verbose = "Y"))
  expect_error(aemet_daily_period(start = "Y"))
  expect_error(aemet_daily_period(end = "Y"))
  expect_error(aemet_daily_period(return_sf = "Y"))
})


test_that("Test call on daily period", {
  skip_if_not(aemet_detect_api_key(),
    message = "Skip. No API Key"
  )

  expect_silent(aemet_daily_period(c("3129", "0076")))
  expect_message(aemet_daily_period(c("3129", "0076"), verbose = TRUE))
  expect_true("sf" %in% class(
    aemet_daily_period(c("3129", "0076"), return_sf = TRUE)
  ))
})


test_that("Test errors on daily period all", {
  expect_error(aemet_daily_period_all(start = NULL))
  expect_error(aemet_daily_period_all(end = NULL))
  expect_error(aemet_daily_period_all(verbose = "Y"))
  expect_error(aemet_daily_period_all(start = "Y"))
  expect_error(aemet_daily_period_all(end = "Y"))
  expect_error(aemet_daily_period_all(return_sf = "Y"))
})


test_that("Test call on daily period", {
  skip_if_not(aemet_detect_api_key(),
    message = "Skip. No API Key"
  )

  expect_silent(aemet_daily_period_all())
  expect_message(aemet_daily_period_all(verbose = TRUE))
  expect_true("sf" %in% class(
    aemet_daily_period_all(return_sf = TRUE)
  ))
})
