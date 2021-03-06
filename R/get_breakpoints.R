#' Find table of break ages and labels
#'
#' @param dnr Name of donor dataset. May include \code{"0-2"}, \code{"2-4"} and \code{"4-18"}
#' @return A data frame with three columns: \code{visit}, \code{age} and \code{label}
#' @note
#' SvB 10/01/2021: This function is perhaps better replaced by a read from the
#' fitted brokenstick object.
#' @examples
#' get_breakpoints("pops")
#' @export
get_breakpoints <- function(dnr = "smocc") {
  breakpoints0_2 <- data.frame(
    visit = 1:13,
    age = round(c(0, 28/365.25, 56/365.25, 1/4, 1/3, 1/2,
                  7.5/12, 9/12, 11/12, 14/12, 18/12, 2, 3), 4),
    label = c("0w", "4w", "8w", "3m", "4m", "6m", "7.5m", "9m",
              "11m", "14m", "18m", "24m", "36m"),
    stringsAsFactors = FALSE
  )
  breakpoints0_4 <- data.frame(
    visit = 1:15,
    age = round(c(0, 28/365.25, 56/365.25, 1/4, 1/3, 1/2,
                  7.5/12, 9/12, 11/12, 14/12, 18/12, 2, 3, 3+9/12, 4), 4),
    label = c("0w", "4w", "8w", "3m", "4m", "6m", "7.5m", "9m",
              "11m", "14m", "18m", "24m", "36m", "45m", "48m"),
    stringsAsFactors = FALSE
  )
  breakpoints0_19 <- data.frame(
    visit = 1:11,
    age = round(c(0, 1/4, 1/2, 1, 2,
                  5, 9, 10, 11, 14, 19), 4),
    label = c("0w", "3m", "6m", "12m", "24m",
              "5y", "9y", "10y", "11y", "14y", "19y"),
    stringsAsFactors = FALSE
  )
  breakpoints0_29 <- data.frame(
    visit = 1:9,
    age = round(c(0, 1/4, 1/2, 14/12, 2,
                  4, 10, 18, 29), 4),
    label = c("0w", "3m", "6m", "14m", "24m",
              "4y", "10y", "18y", "29y"),
    stringsAsFactors = FALSE
  )

  if (dnr[1] %in% c("0-2", "smocc")) return(breakpoints0_2)
  if (dnr[1] %in% c("2-4", "lollypop")) return(breakpoints0_4)
  if (dnr[1] == "pops") return(breakpoints0_19)
  if (dnr[1] %in% c("4-18", "terneuzen")) return(breakpoints0_29)
  stop("No breakpoints defined for study ", dnr)
}
