intToCharacter <- function(v){
  lst <- character()
  for(i in 1:length(v)){
    lst[i] <- intToUtf8(v[i])
  }
  return(lst)
}

asciiSort <- function(lista) {
  chOrder <- character() 
  vetOrder <- vector()
  for(i in 1:length(lista)){
    
    vetOrder[i] <- utf8ToInt(lista[i])
  }
  chOrder <- intToCharacter(sort(vetOrder))
  return(chOrder)
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
  lst <- c(as.character(unlist(strsplit(str, ""))))
  #ordena a lista
  lst <- asciiSort(lst)
  response <- permute(lst)
  partial <- character()
  aux <- (paste(c(response[1,]), collapse='' ))
  partial <- paste(partial, aux, sep="")
  for(i in 2:(length(response)/length(response[1,]))){
    aux <- (paste(c(response[i,]), collapse='' ))
    partial <- paste(partial, aux, sep=",")
  }
  listaAux <- unique(c(as.character(unlist(strsplit(partial, ",")))))
  output <- paste( unlist(listaAux), collapse=',')
  if(substring(output,1,1)  == ","){
    print(substring(output,2,nchar(output)), sep="\n")
  }
  else{
    cat(output, sep="\n") 
  }
}

getPermutations("Fnb6")

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