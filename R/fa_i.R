#' Generate a FontAwesome `<i>` tag
#'
#' @inheritParams fa
#' @param class Additional classes to customize the style of the icon (see the
#'   usage examples for details on supported styles).
#' @param ... Arguments passed to the `<i>` tag of [htmltools::tags]
#'
#' @return An icon element.
#'
#' @export
fa_i <- function(name,
                 class = NULL,
                 ...) {

  prefix <- "fa"
  iconClass <- ""

  if (!is.null(name)) {
    prefix_class <- prefix
    if (prefix_class == "fa" && name %in% font_awesome_brands) {
      prefix_class <- "fab"
    }
    iconClass <- paste0(prefix_class, " ", prefix, "-", name)
  }

  if (!is.null(class)) {
    iconClass <- paste(iconClass, class)
  }

  icon_tag <-
    htmltools::tags$i(
      class = iconClass,
      role = "presentation",
      `aria-label` = paste(name, "icon"),
      ...
    )

  htmltools::htmlDependencies(icon_tag) <-
    htmltools::htmlDependency(
      name = "font-awesome",
      version = "5.13.0",
      src = "fontawesome",
      package = "fontawesome",
      stylesheet = c("css/all.min.css", "css/v4-shims.min.css")
    )

  htmltools::browsable(icon_tag)
}
