# self written functions

prop.yes <- function(x, restrict = F, restrict_level = 10L){
  
  n.valid <- sum(is.na(x) %in% FALSE)
   
  if (restrict == T) {
    n.valid <- dplyr::case_when(n.valid >= restrict_level ~ n.valid)}
  
  result <- sum(x == 1, na.rm = T)/n.valid
  
  return(result)

}