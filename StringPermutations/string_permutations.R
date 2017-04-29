#Pega valor asc do char
# asc <- function(x) { 
#   strtoi(charToRaw(x),16L) 
# }
swap01 <- function(lista){
  aux <- lista[length(lista)]
  lista[length(lista)] <- lista[length(lista) - 1]
  lista[length(lista) - 1] <- aux
  return(lista)
}
# 
# swap02 <- function(lista_out, maior, penultimoMaior){
#   posMaior <- match(c(maior), lista_out)
#   posPenultimoMaior <- match(c(penultimoMaior), lista_out)
#   aux <- lista_out[posPenultimoMaior]
#   lista_out[posPenultimoMaior] <- lista_out[posMaior]
#   # if( intToUtf8(utf8ToInt(paste(c( lista_out[length(lista_out) - 1]  ), collapse='' ))) <
#   #     intToUtf8(utf8ToInt(paste(c(aux), collapse='' ) )) ){
#       lista_out[posPenultimoMaior - 1] <- lista_out[ posPenultimoMaior - 2]
#       lista_out[length(lista_out) - 2] <- aux
#   # }else{
#   #   lista_out[posPenultimoMaior] <- aux
#   # }
#   return(lista_out)
# }
swap02 <- function(lista, lista_out, maior, penultimoMaior){
  posMaior <- match(c(maior),lista_out)
  posPenultimoMaior <- match(c(penultimoMaior),lista_out)
  posTroca01 <- posMaior - 1
  if(identical(lista_out[posTroca01], penultimoMaior)){
    aux <- lista_out[posTroca01]
    lista_out[posTroca01] <- lista_out[posMaior]
    lista_out[posMaior] <- aux
    listaAux <- sort(lista_out[posTroca01 + 1:length(lista_out)])
    lista_out <- c(sort(lista_out[length(lista_out) - length(listaAux): length(lista_out)]), listaAux)
  }
  else{
    #Vê quem é o elemento na lista original que vem depois do elemento
    #que tá na posição posTroca01 da lista_out
    #depois pega a posição dele na lista_out pra fazer a troca
    #adebc
    posTroca02 <- match(c(lista[match(c(lista_out[posTroca01]),lista) + 1]), lista_out)
    if (posTroca01 > posTroca02){
      posTroca02 <- posTroca01 + 2
      aux <- lista_out[posTroca01]
      lista_out[posTroca01] <- lista_out[posTroca02]
      lista_out[posTroca02] <- aux
      listaAux <- sort(lista_out[(posTroca01 + 1):length(lista_out)])
      lista_out <- c(c(lista_out[1:posTroca01]),c(listaAux))
    }
    else{
      aux <- lista_out[posTroca01]
      lista_out[posTroca01] <- lista_out[posTroca02]
      lista_out[posTroca02] <- aux
      listaAux <- sort(lista_out[(posTroca01 + 1):length(lista_out)])
      lista_out <- c(c(lista_out[1: posTroca01]), listaAux)
    }
  }
}


getPermutations <- function(){
  str <- "abcde"
  print(str)
  #transforma str em list
  #lista <- c(as.vector(unlist(strsplit(str,"")),mode="list"))
  lista <- c(as.character(unlist(strsplit(str, ""))))
  #ordena a lista
  lista <- lista[order(unlist(lista))]
  lista_out <- lista
  revLista <- rev(lista)
  saida <- (paste(c(lista), collapse='' ))
  maior <- intToUtf8(max(utf8ToInt((paste(c(lista), collapse='' )))))
  posMaior <- match(c(maior),lista)
  penultimoMaior <- lista[posMaior - 1]
  posPenultimoMaior <- match(c(penultimoMaior), lista)
  pos <- length(lista_out) - 1
  while(!identical(lista_out, revLista)){
    if ( intToUtf8(utf8ToInt((paste(c(lista_out[length(lista_out)]), collapse='' ))))  >
         intToUtf8(utf8ToInt((paste(c(lista_out[length(lista_out) - 1]), collapse='' )))) ){
         lista_out <- swap01(lista_out)
         aux <- (paste(c(lista_out), collapse='' ))
         saida <- paste(saida, aux, sep=", ")
    }
    else{
      lista_out <- swap02(lista_out, lista_out, maior, penultimoMaior)
      aux <- (paste(c(lista_out), collapse='' ))
      saida <- paste(saida, aux, sep=", ")
    }
    print(saida)
  }
}



# }
# for (i in 1:length(lista)){
#   outlist <- append(outlist,list(lista[i]))
# }


#getPermutations("abcde")

#expect_that(getPermutations("hat"), equals("aht,ath,hat,hta,tah,ta"))
#expect_that(getPermutations("123"), equals("123, 132, 213, 231, 312, 321"))
#expect_that(getPermutations("12345"), equals(
#                                "12345, 12354, 12435, 12453, 12534, 12543,
#                                13245, 13254, 13425, 13452, 13524, 13542
#                                14235, 14253, 14325, 14352, 14523, 14532,
#                                15234, 15243, 15324, 15342, 15423, 15432,
#                                21345, 21354, 21435, 21453, 21534, 21543,
#                                23145, 23154, 24135, 24153, 24315, 24351,
#                                24513, 24531, 25134, 25143, 25314, 25341,
#                                25413, 25431, 31245, 31254, 31425, 31452,
#                                31524, 31542, 32145, 32154, 32415, 32451
#                                32514, 32541, 34125, 34152, 34215, 34251
#                                34512, 34521, 35124, 35142, 35214, 35241
#                                35412, 35421, 41235, 41253, 41325, 41352,
#                                41523, 41532, 42135, 42153, 42513, 42531,
#                                43125, 43152, 43215, 43251, 43512, 43521,
#                                45123, 45132, 45213, 45231, 45312, 45321,
#                                51234, 51243, 51324, 51342, 51423, 51432,
#                                52134, 52143, 52314, 52341, 52413, 52431,
#                                53124, 53142, 53214, 53241, 53412, 53421,
#                                54123, 54132, 54213, 54231, 54312, 54321"))
