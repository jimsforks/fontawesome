#' Safely print any FontAwesome in R Markdown
#' @description This facilitates printing of
#' the FontAwesome icon within R Markdown.
#' @param x an object containing the class
#' \code{fontawesome}.
#' @keywords internal
#' @importFrom knitr knit_print
#' @export
knit_print.fontawesome <- function(x, ...) {

  knitr::knit_print(as.character(x), ...)
}