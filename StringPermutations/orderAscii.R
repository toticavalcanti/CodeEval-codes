asciiSort <- function(lista) {
  chOrder <- character() 
  vetOrder <- vector()
  for(i in 1:length(lista)){
    vetOrder[i] <- utf8ToInt(lista[i])
    #listOrder <- paste(listOrder, utf8ToInt(lista[i]))
    #saida <- paste(saida, aux, sep=", ")
  }
  chOrder <- intToCharacter(sort(vetOrder))
  return(chOrder)
}

intToCharacter <- function(v){
  lst <- character()
  for(i in 1:length(v)){
    lst[i] <- intToUtf8(v[i])
  }
  return(lst)
}

str <- "gMc"
lista <- c(as.character(unlist(strsplit(str, ""))))
listOrder <- asciiSort(lista)