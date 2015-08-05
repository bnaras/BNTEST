#' Just import some function from RProtoBuf
#' @description Import some function from RProtoBuf
#' for distributed computations
#'
#' @param txt a greeting
#' @return logical value indicating consistent serialization/deserialization
#' @importFrom RProtoBuf serialize_pb
#' @importFrom RProtoBuf unserialize_pb
#'
hello <- function(txt = "world") {
  ##cat("Hello, ", txt, "\n")
  obj <- paste("Hello,", txt)
  msg <- tempfile()
  serialize_pb(obj, msg)
  identical(unserialize_pb(msg), obj)
}
