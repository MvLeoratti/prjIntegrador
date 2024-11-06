try:
  10;0
except ZeorDivisor:
  print("Erro de divisao")
  
#Impremente um codigo que retorne um indece fora do limite de uma lista
lista = [1,2,3]
try:
  elemento = lista[5]
except IndexError:
  print("Erro")

#Implemente um bloco try/catch para capturar uma chave inexistente

dicionario = {"a":1, "b":2, "c":3}
try:
  valor = dicionario["r"]
except KeyError:
  print("Erro de chave")
  

#Exercicio Extra

def main():
  try:
    num1 = float(input("Digite o primeiro numero: "))
    num2 = float(input("Digite o segundo numero: "))
    
    resultado = num1 / num2
    
  except ZeroDivisionError as e:
    print("Erro: Divisao por zero nao permitada")
  except ValueError as e:
    print("Vai dividir uma letra mano!")
  except Exception as e:
    print(f"Ocorreu um erro inesperado: {e}")
  else:
    print(f"O resultado da Didvisao e: {resultado}")
  finally:
    print("Programa Finalizado")

main()

#Capture e trate uma execao ao converter uma string para o inteiro
    
strNum = "pocha"
try:
  valor = int(StrNUm)
exception 
  print("Erro de convencao de String para inteiro")

#Capture e trate execoes em operacoes de dicionario e listas aninhadas

dicionario = {"a":[1,2,3], "b":[4,5,6]}
try:
  elemento = dicionario["c"][0]
except KeyError:
  print("Error: Chave inexistente no dicionario")
except IndexError:
  print("Error: Convensao de string para inteiro falhou")

#Capture e trate exceçoes em operacoes e listas aninhadas.


    
  
