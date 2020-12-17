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


## ----Query--------------------------------------------------------------------
Input <- c(MOL1 = 'CCCOCC', MOL2 = 'CNC(CC1=CN=CN1)C(=O)O')

Query <-
  submit_query(label = 'query_test',
               input = Input,
               type = 'STRUCTURE')



Query


## ----Accessor-----------------------------------------------------------------

classification(Classification)
classification(Query)


meta(Classification)
meta(Query)


chebi(Classification)
chebi(Query)


