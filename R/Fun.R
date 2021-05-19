#' Hello World
#'
#' `hello` says *"hello"* in the user specified language. The user is asked to
#' give her/his name so that the hello message gets personalized.
#'
#' @param who a `character` vector of length 1 that specifies the name of
#' the person to whom the message is addressed.
#' @param lang a `character` vector of length 1 that specifies the preferred
#' language. Default to "EN" for English. Other possible values include "FR" for
#' French, "IT" for Italian, "ES" for Spanish, or "DE" for German. Case is
#' ignored.
#' @param LangData an optional data.frame with two columns each of mode
#' `character`. The first column gives the language codes and the second column
#' gives the corresponding "hello" word. Default to `language`.see `?language`
#'
#' @return a `character` vector with a personalized *"hello"* message.
#'
#' @examples hello("James")
#' hello("Amelia", "Es")
#'
#' @export

hello <- function(who, lang = "EN", LangData = language) {
  if (typeof(who) != "character"){stop("Please enter a valid name; see ?hello")}
  lan <- tolower(lang)
  if (lan %in% LangData[,1]){
    print(stringr::str_c(LangData[LangData[,1]==lan,2],", " ,who,"!", sep=""))}
  else{
    print(stringr::str_c("Sorry, ", who, ", your language ('", lang, "') is not available!", sep=""))}
}
