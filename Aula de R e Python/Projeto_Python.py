#Listando um dicionario
dicionario = {
 "pessoa1":{ "nome":"Ana", "idade":"25", "cidade":"São Paulo"},
 "pessoa2":{ "nome":"Caique", "idade":"24", "cidade":"Sorocaba"},
 "pessoa3":{ "nome":"Jessica", "idade":"65", "cidade":"São Caetano"},
 "pessoa4":{ "nome":"Carol", "idade":"25", "cidade":"São Vicente"}
 }
 print(dicionario)
 
 #Removendo um item do Dicionario
dicionario1 = {"nome":"Ana", "idade":"25", "cidade":"São Paulo"}
del(dicionario1["cidade"])
print(dicionario1)

#Adicionando um item ao dicionario
dicionario = {"nome":"Ana", "idade":35, "cidade": "Sao Paulo"}
dicionario["profissao"]="engenheira"
print(dicionario)
