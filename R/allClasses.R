setOldClass(c('tbl_df', 'tbl', 'data.frame'))

#' ClassyFire Class
#'
#' @description A S4 class to store the results from the ClassyFire RESTful API
#'
#' @slot meta a list of the input SMILE, InChI Key and classification version used
#' @slot classification a `tibble` of the ClassyFire classification results
#' @slot direct_parent a list of the direct parent
#' @slot alternative_parents a `tibble` of alternative parents
#' @slot predicted_chebi a character vector of the predicted ChEBI terms
#' @slot external_descriptors a `tibble` of any external identificatons
#' @slot description a character string of the compound description
#'
#' @export

setClass(
  Class = 'ClassyFire',
  representation = representation(
    meta = 'list',
    classification = 'tbl_df',
    direct_parent = 'list',
    alternative_parents = 'tbl_df',
    predicted_chebi = 'vector',
    external_descriptors = 'tbl_df',
    description = 'character'
  )
)


setOldClass(c('tbl_df', 'tbl', 'data.frame'))

#' ClassyFire Query Class
#'
#' @description A S4 class to store the results from the ClassyFire RESTful API Queries
#'
#' @slot meta a list of the input SMILE, InChI Key and classification version used
#' @slot classification a list of `tibbles` of the ClassyFire classification results
#' @slot direct_parent a list of `tibbles` the direct parent
#' @slot alternative_parents a list of `tibbles` of alternative parents
#' @slot predicted_chebi a list of character vectors of the predicted ChEBI terms
#' @slot external_descriptors a list of `tibbles` of any external identificatons
#' @slot description a character string of the compound description
#'
#' @export

setClass(
  Class = 'Query',
  representation = representation(
    meta = 'list',
    classification = 'list',
    direct_parent = 'tbl_df',
    alternative_parents = 'tbl_df',
    predicted_chebi = 'list',
    external_descriptors = 'list',
    description = 'list'
  )
)



