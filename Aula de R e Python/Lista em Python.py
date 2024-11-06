#Python 
# Exercicio Facil: Crie uma lista contendo os numeros de 1 a 5
lista=[1,2,3,4,5]
print(lista)

# Exercicio Facil: Adicione o elemento 6 em uma lista [1,2,3,4,5]
lista = [1,2,3,4,5]
lista.append(6)
print(lista)

#Exercicio Medio: Remova o terceiro elemento da lista
lista = [1,2,3,4,5]
lista.pop(2)
print(lista)

#Exercicio Dificil: inverta a ordem dos elementos da lista [1,2,3,4,5]
lista = [1,2,3,4,5]
lista_invertida = lista[::-1]
print(lista_invertida)


#Exercicio Dificil: Crie uma lista (matriz) de tamanho 3x3 e calcule a soma de cada linha
matriz = [[1,2,3],[4,5,6],[7,8,9]]
soma_linha = [sum(linha) for linha in matriz]
print(soma_linha)

#Tuplas

#Exercicio Facil: Fazer uma tupla
tupla = (1,2,3,4,5)
print(tupla)

#Exeecicio Facil: Acesse o terceiro elemento da tupla de 1 a 5 e imprima-o
tupla = list(1,2,3,4,5)
print(tupla[2])

#Exercicio Medio: Crie uma tupla em contendo tres tuplas internas cada uma com dois elementos
tupla = ((1,2),(3,4),(5,6))
print(tupla)

#Exercicio Medio: Concatene duas Tuplas: (1,2,3) e (4,5,6) e imprima
tupla1 = (1,2,3)
tupla2 = (4,5,6)
concatenacao = tupla1 + tupla2
print(concatenacao)

#Exercicio Dificil : Crie uma tupla com os elementos (1,2,3,4,5) e verifique se o numero 3 esta na tupla

tupla = (1,2,3,4,5)
existe = 9 in tupla
print(existe)

#Exercicio Dificil: Crie uma tupla com os elementos (1,2,3,4,5)
tupla = (1,2,3,4,5)
indice = tupla.index(4)
print(indice)
#----------------------------------------------------------------------------------------------------------------------------------

#Dicionario

#----------------------------------------------------------------------------------------------------------------------------------

#Exercicio Facil: Crie um dicionario com chaves "nome", "idade", "cidade"
dicionario = {"nome":"Ana", "idade":35, "cidade": "Sao Paulo"}
print(dicionario)

#Acesse o valor associado a chave idade no dicionario
dicionario = {"nome":"Ana", "idade":35, "cidade": "Sao Paulo"}
idade = dicionario["idade"]
print(idade)

#Exercicio Medio: Adicione um novo par chave valor "profissao": "engenharia" ao dicionario "nome":"Ana", "idade":35, "cidade": "Sao Paulo"

dicionario = {"nome":"Ana", "idade":35, "cidade": "Sao Paulo"}
dicionario["profissao"]="engenheira"
print(dicionario)


