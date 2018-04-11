#' Output format for INFORMS journal submissions
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in INFORMS style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Rob J Hyndman
#'
#' @export

#' @rdname article
#' @export
article <- function(...) {
  template <- system.file("rmarkdown/templates/Article/resources/informs.tex",
                          package="informs")
  bookdown::pdf_document2(...,
                          template = template
  )
}

