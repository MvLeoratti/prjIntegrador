#Vetores Python
# Exercicio Facil Crie um vetor com os numeros de 1 a 10 e imprima-o
vetor = list(range(1,11))
print(vetor)

#Exercicio Facil: criar um vetor de 2 a 20 e imprimir
vetor1 = list(range(2,21,2))
print(vetor1)

#Exercicio Medio: Calcule a soma dos elementos de um vetor com numeros de 1 a 100

vetor2 = list(range(1,101))
soma = sum(vetor2)
print(soma)

import random
#Exercicio Medio: Enontre o maior e menor valor de um vetor de numeros aleatroios entre 1 e 1000
vetor3 = [random.randint(1,1000) for _ in range(50)]
menor3 = min(vetor3)
maior3 = max(vetor3)
print("O menor numero e", menor3)
print("O maior valor e:" , maior3)

#Criar um vetor com os 10 primeiros numeros primos
def e_primo(n):
  if n<=1:
    return False
  for i in range(2, int(n**0.5)+1):
    if n % i ==0:
      return False
  return True
primos = []
numero1 = 2
while len(primos)<10:
  if e_primo(numero1):
    primos.append(numero1)
  numero1+=1
print(primos)

#Exercicio Dificil: Inverta a ordem dos elementos de um vetor de tamanho 20, preenchiso com numeros aleatorios
import random
vetor4 = [random.randint(1,100) for _ in range(20)]
vetor_invertido = vetor4[::-1]
print("O Valor do Vetor e:")
print(vetor4)
print("O Valor do Vetor invertido e:")
print(vetor_invertido)


