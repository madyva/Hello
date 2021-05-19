#' Language
#'
#' The dataframe `language` provides the word "hello" in different languages.
#'
#' @format A `data.frame` with 5 rows and 2 columns:
#' \describe{
#'   \item{`code`}{language code: "en", "fr", "it", "es", "de", for English, French, Italian, Spanish and German.}
#'   \item{`hello`}{word "hello" in the language correspondig to the code}
#' }
#' @source {\url{https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes}
#'
#' \url{https://translate.google.com/}}
#'
"language"

globalVariables("language")
