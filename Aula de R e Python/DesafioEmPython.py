dicionario = {"a":1,"b":2, "c":3}
item = int(input("Digite a Chave: "))
for chave, valor in dicionario.items():
  if (chave=="b"):
    print(f"Chave {chave} e o valor {valor}")
