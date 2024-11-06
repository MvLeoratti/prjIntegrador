#Operdores Condicionais
#Verifique se o numero e positivo
numero=5
if numero >0:
  print("O numero e positivo")
else:
  print("O numero e negativo")
  
  
#Verifique se um palavra tem mai de 5 letras

str01 = "correspondente"
if len(str01)>5:
  print("A palavra tem mais de 5 letras")
else:
  print("A palavra tem menos de 5 letras")

# Verificar se um ano e bissexto

ano = 2024
if (ano%4==0 and ano%100!=0) or (ano%400==0):
  print("O ano e bissexto")
else:
  print("O ano Não e Bissexto")

#2.5.2 Composta

#verificar se um numero esta entre 10 e 20

numero = 14
if (numero>10 && numero<=20):
  print("O numero esta entre 10 e 20")
else:
  print("O numero NÄO esta entre 10 e 20")

#Verifique se uma string contem letras e numros
letrasNUm ="Letras9387376"
if any(c.isalpha() for c in letrasNUm) and any(c.isdigit() for c in letrasNUm):
  print("A String contem e numeros letras")
else:
  print("A String Não contem e numeros letras")

#2.5.3 Encadeada
#Verifique a faixa etaria de uma pessoa (crianca, adolecente, idoso)

idade =25

if idade<13:
  print("crianca"):
elif idade <18:
  print("Adolecente")
elif idade< 60:
  print("Adulto")
else:
  print("Idoso")

#Determine a estacao do ano baseada no mes
mes = 5

if (mes in [6,7,6]):
  print("Inverno")
elif mes in [9,10,11]:
  print("Primavera")
elif mes in [12,1,2]:
  print("Verao")
elif mes in [3,4,5]:
  print("Outono")
else: print("Outra Estacao")

# Imprima numeros de 1 a 10

for i in range(1,11):
  print(f"Nuemro : {i}")
  
  
#IMprima os elementos de uma lista
lista = [1,2,3,4,5]
for elemento in lista:
  print(elemento)

#Imprima os elementos de um dicionario
dicionario = {"a":1,"b":2, "c":3}
for chave, valor in dicionario.items():
  print(f"chave:{chave}, valor: {valor}")
  

i = 0
while i<=10:
  print(i)
  i+=1
