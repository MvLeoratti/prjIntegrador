#Tratamento de Erros
#Imprima NUmero de 1 a 10

tryCatch({
  resultado = 10/0
}.error <- function(e){
  
  print("Erro de divisao")
}
  

)

#Impremente um codigo que retorne um indece fora do limite de uma lista

lista <- c[1,2,3]
tryCatch({
  elemento<-lista[5]
}.error<-function(e){
  print("Erro: Indice fora dos limites da lista")
}
)

#Implemente um bloco try/catch para capturar uma chave inexistente

dicionario <- list(a=1, b=2, c=3)
tryCatch({
  valor <-dicionario[["d"]]
}.error <-function(e){
  print("Error: Chave inexistente no dicionario")
}
)

#Capture e trate uma execao ao converter uma string para o inteiro

string <-"abc"
tryCatch({
  numero <- as.integer(string)
},warning = function(w){
  print("Erro: Conversao de string para inteiro falhou")
})


#Capture e trate exceçoes em operacoes e listas aninhadas.

dicionario <- list(a=c(1,2,3), b=c(4,5,6))
tryCatch({
  elemento = dicionario[["c"]][1]
}, error = function(e){
   if(inherits(e, "simpleError"))}
    print("Error: Chave inexistente no dicionario ou indice fora dos limites da lista")
)
