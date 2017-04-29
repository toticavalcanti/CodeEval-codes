# Sample code to read test cases
#
#args <- commandArgs(trailingOnly=TRUE)
#test.cases <- strsplit(readLines(args[[1]], warn=FALSE), '\n')
#for (test in test.cases) {
#    if (length(test) > 0) {
#        # ignore test if it is an empty line
#        # 'test' represents the test case, do something with it
#    }
#}
asciiSort <- function(vec) {
  x <- sapply(vec, 
              function(X) {
                paste0(strtoi(charToRaw(X), base=16), collapse="")
              })
  vec[order(x)]
}

permute <- function(x) {
  if (length(x) == 1) {
    return(x)
  }
  else {
    res <- matrix(nrow = 0, ncol = length(x))
    for (i in seq_along(x)) {
      res <- rbind(res, cbind(x[i], Recall(x[-i])))
    }
    return (res)
  }
}

getPermutations <- function(str){
  #transforma str em list
  lista <- c(as.character(unlist(strsplit(str, ""))))
  #ordena a lista
  lista <- asciiSort(lista)
  resposta <- permute(lista)
  output <- (paste(c(lista), collapse='' ))
  for(i in 2:(length(resposta)/length(resposta[1,]))){
    aux <- (paste(c(resposta[i,]), collapse='' ))
    output <- paste(output, aux, sep=", ")
  }
 print(output)
}

getPermutations("aF3")


