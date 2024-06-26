#' Add or remove a scale bar
#'
#' Uses Leaflet's built-in
#' [scale bar](https://web.archive.org/web/20220702182250/https://leafletjs.com/reference-1.3.4.html#control-scale)
#' feature to add a scale bar.
#'
#' @param map the map to add the scale bar to
#' @param position position of control: `"topleft"`, `"topright"`, `"bottomleft"`, or
#'   `"bottomright"`.
#' @param options a list of additional options, intended to be provided by
#'   a call to `scaleBarOptions()`
#'
#' @examples
#' \donttest{
#' leaflet() %>%
#'   addTiles() %>%
#'   addScaleBar()
#' }
#'
#' @export
addScaleBar <- function(map,
  position = c("topright", "bottomright", "bottomleft", "topleft"),
  options = scaleBarOptions()) {

  options <- c(options, list(position = match.arg(position)))
  invokeMethod(map, getMapData(map), "addScaleBar", options)
}

#' @rdname addScaleBar
#' @param maxWidth maximum width of the control in pixels (default 100)
#' @param metric if `TRUE` (the default), show a scale bar in metric units
#' (m/km)
#' @param imperial if `TRUE` (the default), show a scale bar in imperial
#' units (ft/mi)
#' @param updateWhenIdle if `FALSE` (the default), the scale bar is always
#' up-to-date (updated on `move`). If `TRUE`, the control is updated
#' on `moveend`.
#' @export
scaleBarOptions <- function(maxWidth = 100, metric = TRUE, imperial = TRUE,
  updateWhenIdle = TRUE) {
    list(maxWidth = maxWidth, metric = metric, imperial = imperial,
      updateWhenIdle = updateWhenIdle)
}

#' @rdname addScaleBar
#' @export
removeScaleBar <- function(map) {
  invokeMethod(map, NULL, "removeScaleBar")
}
