#Projeto em R

#LIstando os itens do Dicionario
dicionario <-list(
  "pessoa1"<-list( nome="Ana", idade="25", cidade="São Paulo"),
  "pessoa2"<-list( nome="Caique", idade="24", cidade="Sorocaba"),
  "pessoa3"<-list( nome="Jessica", idade="65", cidade="São Caetano"),
  "pessoa4"<-list( nome="Carol", idade="25", cidade="São Vicente")
)
for(pessoa in dicionario){
  print(paste("Nome:",pessoa$nome, ",Idade:",pessoa$idade, ",cidade:",pessoa$cidade))
}

#Adicionando um item ao Dicionario
dicionario <- list(nome="Ana", idade=25, cidade = "Sao Paulo")
dicionario$profissao<-"engenheira"
print(dicionario)

#Removendo um item do Dicionario
dicionario <-list("nome"="Ana", "idade"="25", "cidade"="São Paulo")
dicionario$cidade<- NULL
print(dicionario)