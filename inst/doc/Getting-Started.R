## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  
  collapse = TRUE,
  comment = "#>"
)

## ----install_cran, echo=TRUE, eval=FALSE--------------------------------------
#  install.packages('classyfireR')
#  
#  remotes::install_github('aberHRML/classyfireR')

## ----GetClassification--------------------------------------------------------
library(classyfireR)

Classification <- get_classification('BRMWTNUJHUMWMS-LURJTMIESA-N')

Classification


## ----GetClassification_Map----------------------------------------------------
InChI_Keys <-
  c('BRMWTNUJHUMWMS-LURJTMIESA-N',
    'MDHYEMXUFSJLGV-UHFFFAOYSA-N',
    'MYYIAHXIVFADCU-QMMMGPOBSA-N')


Classification_List <- purrr::map(InChI_Keys, get_classification)


## ----Accessor, echo=TRUE, eval=TRUE-------------------------------------------

classification(Classification)


meta(Classification)


chebi(Classification)


## ---- local_cache, echo=TRUE, eval=FALSE--------------------------------------
#  ClassyFireDB <- RSQLite::dbConnect(RSQLite::SQLite(), 'ClassyFireCache.db')

## ---- open_cache, echo=TRUE, eval=FALSE---------------------------------------
#  ClassyFireCache <- open_cache(dbname = 'ClassyFireCache.db')

## ---- run_cache, echo=TRUE, eval=FALSE----------------------------------------
#  get_classification('BRMWTNUJHUMWMS-LURJTMIESA-N', conn = ClassyFireCache)

