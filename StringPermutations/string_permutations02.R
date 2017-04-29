library(combinat)
library(gtools)
getPermutations <- function(str){
  #Make a list
  caracteres <- c(as.character(unlist(strsplit(str, ""))))
  #permutation
  caracteres <- c(combinat:::permn(caracteres[1:length(caracteres)]))
  #Convert a list of lists to a character vector
  caracteres <- sapply( caracteres, paste0, collapse="")
  #Ordena em ordem crescente
  caracteres <- mixedsort(caracteres)
  #Print to stdout
  cat(caracteres, sep=", ")
}

getPermutations("abcde")