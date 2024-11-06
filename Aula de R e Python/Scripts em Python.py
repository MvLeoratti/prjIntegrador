#Declaracao de variaveis
nome = 'Marcello'
idade = 34
altura = 1.90
nacionalidade = True
Mensagem = "E ai pessoal"

print("Nome:",nome)
print("Idade",idade)
print("Altura",altura)
print("Mensagem: ",Mensagem)

#constante
PI = 3,14149

#inteiro
idade = 34
print("Idade",idade)

#data e hora
from datetime import datetime

data_atual = datetime.now()
print(data_atual)

#Enumerar
from enum import Enum

class dias_da_Semana(Enum):
  Segunda =1
  terca =2
  quarta=3
  quinta=4
  sexta=5
  sabad0=6
  domingo=7
  
  print(dias_da_Semana.quarta.value)
  print(dias_da_Semana.quarta.name)






