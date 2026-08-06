#' @noRd
format_num_as_nor <- function(
  x,
  digits = 0,
  sig = NULL,
  break_with_four_digits = F
) {
  retval <- vector("character", length = length(x))
  index_not_na <- !is.na(x)
  retval[!index_not_na] <- "IK"

  if (!is.null(sig)) {
    retval[index_not_na] <- formatC(
      signif(x[index_not_na], digits = sig),
      big.mark = " ",
      decimal.mark = ",",
      format = "f",
      digits = digits
    )
  } else {
    retval[index_not_na] <- formatC(
      x[index_not_na],
      big.mark = " ",
      decimal.mark = ",",
      format = "f",
      digits = digits
    )
  }
  index <- which(x[index_not_na] >= 1000 & x[index_not_na] < 10000)
  if (length(index) > 0 & break_with_four_digits == F) {
    retval[index_not_na][index] <- stringr::str_remove(
      retval[index_not_na][index],
      " "
    )
  }
  return(retval)
}

#' @noRd
format_num_as_journal <- function(x, digits = 0, sig = NULL) {
  retval <- vector("character", length = length(x))
  index_not_na <- !is.na(x)
  retval[!index_not_na] <- "NA"

  if (!is.null(sig)) {
    retval[index_not_na] <- formatC(
      signif(x[index_not_na], digits = sig),
      big.mark = ",",
      decimal.mark = ".",
      format = "f",
      digits = digits
    )
  } else {
    retval[index_not_na] <- formatC(
      x[index_not_na],
      big.mark = ",",
      decimal.mark = ".",
      format = "f",
      digits = digits
    )
  }
  return(retval)
}

#' Format numbers with Norwegian conventions (0 decimal places)
#'
#' @description Formats numeric values with Norwegian conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers.
#' @examples
#' # Basic number formatting
#' format_num_as_nor_num_0(c(1234.56, 9876.54, NA))
#' format_num_as_nor_num_1(c(1234.56, 9876.54, NA))
#' format_num_as_nor_num_2(c(1234.56, 9876.54, NA))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_num
#' @export
format_num_as_nor_num_0 <- function(x) format_num_as_nor(x, digits = 0)

#' Format numbers with Norwegian conventions (1 decimal place)
#'
#' @description Formats numeric values with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_num
#' @export
format_num_as_nor_num_1 <- function(x) format_num_as_nor(x, digits = 1)

#' Format numbers with Norwegian conventions (2 decimal places)
#'
#' @description Formats numeric values with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_num
#' @export
format_num_as_nor_num_2 <- function(x) format_num_as_nor(x, digits = 2)


#' Format numbers per 100k with Norwegian conventions (0 decimal places)
#'
#' @description Formats numeric values as rates per 100k with Norwegian conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "/100k" suffix.
#' @examples
#' # Format rates per 100k population
#' format_num_as_nor_per100k_0(c(123.45, 678.90, NA))
#' format_num_as_nor_per100k_1(c(123.45, 678.90, NA))
#' format_num_as_nor_per100k_2(c(123.45, 678.90, NA))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_per100k
#' @export
format_num_as_nor_per100k_0 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 0), " /100k")
  retval[retval == "IK /100k"] <- "IK"
  return(retval)
}

#' Format numbers per 100k with Norwegian conventions (1 decimal place)
#'
#' @description Formats numeric values as rates per 100k with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "/100k" suffix.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_per100k
#' @export
format_num_as_nor_per100k_1 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 1), " /100k")
  retval[retval == "IK /100k"] <- "IK"
  return(retval)
}

#' Format numbers per 100k with Norwegian conventions (2 decimal places)
#'
#' @description Formats numeric values as rates per 100k with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "/100k" suffix.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_per100k
#' @export
format_num_as_nor_per100k_2 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 2), " /100k")
  retval[retval == "IK /100k"] <- "IK"
  return(retval)
}

#' Format numbers as percentages with Norwegian conventions (0 decimal places)
#'
#' @description Formats numeric values as percentages with Norwegian conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "%" suffix.
#' @examples
#' # Format percentages
#' format_num_as_nor_perc_0(c(12.34, 56.78, NA))
#' format_num_as_nor_perc_1(c(12.34, 56.78, NA))
#' format_num_as_nor_perc_2(c(12.34, 56.78, NA))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_perc
#' @export
format_num_as_nor_perc_0 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 0), " %")
  retval[retval == "IK %"] <- "IK"
  return(retval)
}

#' Format numbers as percentages with Norwegian conventions (1 decimal place)
#'
#' @description Formats numeric values as percentages with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "%" suffix.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_perc
#' @export
format_num_as_nor_perc_1 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 1), " %")
  retval[retval == "IK %"] <- "IK"
  return(retval)
}

#' Format numbers as percentages with Norwegian conventions (2 decimal places)
#'
#' @description Formats numeric values as percentages with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of Norwegian-formatted numbers with a "%" suffix.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_perc
#' @export
format_num_as_nor_perc_2 <- function(x) {
  retval <- paste0(format_num_as_nor(x, digits = 2), " %")
  retval[retval == "IK %"] <- "IK"
  return(retval)
}


#' Format numbers on inverse log-2 scale with Norwegian conventions (1 decimal place)
#'
#' @description Applies \code{2^x}, then formats with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector of values on the log-2 scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @examples
#' # Transform log2 values back to original scale
#' format_num_as_nor_invlog2_1(c(1, 2, 3))  # 2^1, 2^2, 2^3
#' format_num_as_nor_invlog2_2(c(1, 2, 3))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invlog2
#' @export
format_num_as_nor_invlog2_1 <- function(x) {
  format_num_as_nor_num_1(2^x)
}


#' Format numbers on inverse log-2 scale with Norwegian conventions (2 decimal places)
#'
#' @description Applies \code{2^x}, then formats with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector of values on the log-2 scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invlog2
#' @export
format_num_as_nor_invlog2_2 <- function(x) {
  format_num_as_nor_num_2(2^x)
}


#' Format numbers on inverse log-10 scale with Norwegian conventions (1 decimal place)
#'
#' @description Applies \code{10^x}, then formats with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector of values on the log-10 scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @examples
#' # Transform log10 values back to original scale
#' format_num_as_nor_invlog10_1(c(1, 2, 3))  # 10^1, 10^2, 10^3
#' format_num_as_nor_invlog10_2(c(1, 2, 3))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invlog10
#' @export
format_num_as_nor_invlog10_1 <- function(x) {
  format_num_as_nor_num_1(10^x)
}


#' Format numbers on inverse log-10 scale with Norwegian conventions (2 decimal places)
#'
#' @description Applies \code{10^x}, then formats with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector of values on the log-10 scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invlog10
#' @export
format_num_as_nor_invlog10_2 <- function(x) {
  format_num_as_nor_num_2(10^x)
}


#' Format numbers on inverse natural log scale with Norwegian conventions (1 decimal place)
#'
#' @description Applies \code{exp(x)}, then formats with Norwegian conventions and 1 decimal place.
#' @param x Numeric vector of values on the natural log scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @examples
#' # Transform natural log values back to original scale
#' format_num_as_nor_invloge_1(c(0, 1, 2))  # exp(0), exp(1), exp(2)
#' format_num_as_nor_invloge_2(c(0, 1, 2))
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invloge
#' @export
format_num_as_nor_invloge_1 <- function(x) {
  format_num_as_nor_num_1(exp(x))
}


#' Format numbers on inverse natural log scale with Norwegian conventions (2 decimal places)
#'
#' @description Applies \code{exp(x)}, then formats with Norwegian conventions and 2 decimal places.
#' @param x Numeric vector of values on the natural log scale.
#' @returns Character vector of Norwegian-formatted numbers.
#' @family csstyle_formatters
#' @rdname format_num_as_nor_invloge
#' @export
format_num_as_nor_invloge_2 <- function(x) {
  format_num_as_nor_num_2(exp(x))
}


# Journal formatting functions -----------------------------------------------

#' Format numbers with journal conventions (0 decimal places)
#'
#' @description Formats numeric values with journal conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers.
#' @examples
#' # Journal number formatting
#' format_num_as_journal_num_0(c(1234.56, 9876.54, NA))
#' format_num_as_journal_num_1(c(1234.56, 9876.54, NA))
#' format_num_as_journal_num_2(c(1234.56, 9876.54, NA))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_num
#' @export
format_num_as_journal_num_0 <- function(x) format_num_as_journal(x, digits = 0)

#' Format numbers with journal conventions (1 decimal place)
#'
#' @description Formats numeric values with journal conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_num
#' @export
format_num_as_journal_num_1 <- function(x) format_num_as_journal(x, digits = 1)

#' Format numbers with journal conventions (2 decimal places)
#'
#' @description Formats numeric values with journal conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_num
#' @export
format_num_as_journal_num_2 <- function(x) format_num_as_journal(x, digits = 2)


#' Format numbers per 100k with journal conventions (0 decimal places)
#'
#' @description Formats numeric values as rates per 100k with journal conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "/100k" suffix.
#' @examples
#' # Format rates per 100k population
#' format_num_as_journal_per100k_0(c(123.45, 678.90, NA))
#' format_num_as_journal_per100k_1(c(123.45, 678.90, NA))
#' format_num_as_journal_per100k_2(c(123.45, 678.90, NA))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_per100k
#' @export
format_num_as_journal_per100k_0 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 0), "/100k")
  retval[retval == "NA/100k"] <- "NA"
  return(retval)
}

#' Format numbers per 100k with journal conventions (1 decimal place)
#'
#' @description Formats numeric values as rates per 100k with journal conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "/100k" suffix.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_per100k
#' @export
format_num_as_journal_per100k_1 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 1), "/100k")
  retval[retval == "NA/100k"] <- "NA"
  return(retval)
}

#' Format numbers per 100k with journal conventions (2 decimal places)
#'
#' @description Formats numeric values as rates per 100k with journal conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "/100k" suffix.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_per100k
#' @export
format_num_as_journal_per100k_2 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 2), "/100k")
  retval[retval == "NA/100k"] <- "NA"
  return(retval)
}

#' Format numbers as percentages with journal conventions (0 decimal places)
#'
#' @description Formats numeric values as percentages with journal conventions and 0 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "%" suffix.
#' @examples
#' # Format percentages
#' format_num_as_journal_perc_0(c(12.34, 56.78, NA))
#' format_num_as_journal_perc_1(c(12.34, 56.78, NA))
#' format_num_as_journal_perc_2(c(12.34, 56.78, NA))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_perc
#' @export
format_num_as_journal_perc_0 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 0), "%")
  retval[retval == "NA%"] <- "NA"
  return(retval)
}

#' Format numbers as percentages with journal conventions (1 decimal place)
#'
#' @description Formats numeric values as percentages with journal conventions and 1 decimal place.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "%" suffix.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_perc
#' @export
format_num_as_journal_perc_1 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 1), "%")
  retval[retval == "NA%"] <- "NA"
  return(retval)
}

#' Format numbers as percentages with journal conventions (2 decimal places)
#'
#' @description Formats numeric values as percentages with journal conventions and 2 decimal places.
#' @param x Numeric vector to format.
#' @returns Character vector of journal-formatted numbers with a "%" suffix.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_perc
#' @export
format_num_as_journal_perc_2 <- function(x) {
  retval <- paste0(format_num_as_journal(x, digits = 2), "%")
  retval[retval == "NA%"] <- "NA"
  return(retval)
}


#' Format numbers on inverse log-2 scale with journal conventions (1 decimal place)
#'
#' @description Applies \code{2^x}, then formats with journal conventions and 1 decimal place.
#' @param x Numeric vector of values on the log-2 scale.
#' @returns Character vector of journal-formatted numbers.
#' @examples
#' # Transform log2 values back to original scale
#' format_num_as_journal_invlog2_1(c(1, 2, 3))  # 2^1, 2^2, 2^3
#' format_num_as_journal_invlog2_2(c(1, 2, 3))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invlog2
#' @export
format_num_as_journal_invlog2_1 <- function(x) {
  format_num_as_journal_num_1(2^x)
}


#' Format numbers on inverse log-2 scale with journal conventions (2 decimal places)
#'
#' @description Applies \code{2^x}, then formats with journal conventions and 2 decimal places.
#' @param x Numeric vector of values on the log-2 scale.
#' @returns Character vector of journal-formatted numbers.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invlog2
#' @export
format_num_as_journal_invlog2_2 <- function(x) {
  format_num_as_journal_num_2(2^x)
}


#' Format numbers on inverse log-10 scale with journal conventions (1 decimal place)
#'
#' @description Applies \code{10^x}, then formats with journal conventions and 1 decimal place.
#' @param x Numeric vector of values on the log-10 scale.
#' @returns Character vector of journal-formatted numbers.
#' @examples
#' # Transform log10 values back to original scale
#' format_num_as_journal_invlog10_1(c(1, 2, 3))  # 10^1, 10^2, 10^3
#' format_num_as_journal_invlog10_2(c(1, 2, 3))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invlog10
#' @export
format_num_as_journal_invlog10_1 <- function(x) {
  format_num_as_journal_num_1(10^x)
}


#' Format numbers on inverse log-10 scale with journal conventions (2 decimal places)
#'
#' @description Applies \code{10^x}, then formats with journal conventions and 2 decimal places.
#' @param x Numeric vector of values on the log-10 scale.
#' @returns Character vector of journal-formatted numbers.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invlog10
#' @export
format_num_as_journal_invlog10_2 <- function(x) {
  format_num_as_journal_num_2(10^x)
}


#' Format numbers on inverse natural log scale with journal conventions (1 decimal place)
#'
#' @description Applies \code{exp(x)}, then formats with journal conventions and 1 decimal place.
#' @param x Numeric vector of values on the natural log scale.
#' @returns Character vector of journal-formatted numbers.
#' @examples
#' # Transform natural log values back to original scale
#' format_num_as_journal_invloge_1(c(0, 1, 2))  # exp(0), exp(1), exp(2)
#' format_num_as_journal_invloge_2(c(0, 1, 2))
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invloge
#' @export
format_num_as_journal_invloge_1 <- function(x) {
  format_num_as_journal_num_1(exp(x))
}


#' Format numbers on inverse natural log scale with journal conventions (2 decimal places)
#'
#' @description Applies \code{exp(x)}, then formats with journal conventions and 2 decimal places.
#' @param x Numeric vector of values on the natural log scale.
#' @returns Character vector of journal-formatted numbers.
#' @family csstyle_journal_formatters
#' @rdname format_num_as_journal_invloge
#' @export
format_num_as_journal_invloge_2 <- function(x) {
  format_num_as_journal_num_2(exp(x))
}
