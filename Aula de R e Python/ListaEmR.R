#Lista R
# Exercicio Facil: Crie uma lista contendo os numeros de 1 a 5
lista = list(1,2,3,4,5)
print(lista)

# Exercicio Facil: Adicione o elemento 6 em uma lista [1,2,3,4,5]
lista <- list(1,2,3,4,5)
lista [[6]]<-6
print(lista)

#Exercicio Medio: Remova o terceiro elemento da lista
lista <- list(1,2,3,4,5)
lista<- lista[-3]
print(lista)

#Exercicio Dificil: inverta a ordem dos elementos da lista [1,2,3,4,5]
lista <- list(1,2,3,4,5)
lista_invetida <- rev(lista)
print(lista_invetida)

#Exercicio Dificil: Crie uma lista (matriz) de tamanho 3x3 e calcule a soma de cada linha
matriz <-list(c(1,2,3,), c(4,5,6), c(7,8,9))
soma_linhas <- sapply(matriz, sum)
print(soma_linhas)
#-------------------------------------------------------------------------------------------------------------------------------------
#Tupla em R

#-------------------------------------------------------------------------------------------------------------------------------------
tupla <- list(1,2,3,4,5)
print(tupla)

#Exercicio Medio: Crie uma tupla em contendo tres tuplas internas cada uma com dois elementos
tupla<-list(list(1,2),list(3,4),list(5,6))
print(tupla)

tupla<-list(c(1,2),c(3,4),c(5,6))
print(tupla)

#Exercicio Medio: Concatene duas Tuplas: (1,2,3) e (4,5,6) e imprima

lista1 <-list(1,2,3)
lista2 <-list(4,5,6)
concatenacao <- c(lista1, lista2)
print(concatenacao)

#Exercicio Dificil : Crie uma tupla com os elementos (1,2,3,4,5) e verifique se o numero 3 esta na tupla

lista <- list(1,2,3,4,5)
existe <- 3 %in% lista
print(existe)

#Exercicio Dificil: Crie uma tupla com os elementos (1,2,3,4,5)
lista <- list(1,2,3,4,5)
indice <-which(unlist(lista)==4)
print(indice)

#----------------------------------------------------------------------------------------------------------------------------------------

#Dicionario

#----------------------------------------------------------------------------------------------------------------------------------------

#Exercicio Facil: Crie um dicionario com chaves "nome", "idade", "cidade"
dicionario <- list(nome="Ana", idade=25, cidade = "Sao Paulo")
print(dicionario)

#Acesse o valor associado a chave idade no dicionario
dicionario <- list(nome="Ana", idade=25, cidade = "Sao Paulo")
existe1<-dicionario$idade
print(existe1)

#Exercicio Medio: Adicione um novo par chave valor "profissao": "engenharia" ao dicionario "nome":"Ana", "idade":35, "cidade": "Sao Paulo"
dicionario <- list(nome="Ana", idade=25, cidade = "Sao Paulo")
dicionario$profissao<-"engenheira"
print(dicionario)

