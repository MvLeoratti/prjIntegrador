#R Script
#Exercicio Medio: Remova a chave "cidade" do dicionario {"nome":"Ana", "idade":"25", "cidade":"Sao Paulo"}
dicionario <-list("nome"="Ana", "idade"="25", "cidade"="São Paulo")
dicionario$cidade<- NULL
print(dicionario)

#Exercicio Dificil: crie um dicionario aninhado para armazenar informações de varias pessoas, onde cada pessoa tem um nome e cidade
dicionario <-list(
  "pessoa1"<-list( nome="Ana", idade="25", cidade="São Paulo"),
  "pessoa2"<-list( nome="Caique", idade="24", cidade="Sorocaba"),
  "pessoa3"<-list( nome="Jessica", idade="65", cidade="São Caetano"),
  "pessoa4"<-list( nome="Carol", idade="25", cidade="São Vicente")
)
print(dicionario)

#Exercicio Dificil: Pecorra um dicionario aninhado e imprima as informações de cada pessoa no formato: "Nome: Ana, idade=25, cidade=São Paulo"
dicionario <-list(
  "pessoa1"<-list( nome="Ana", idade="25", cidade="São Paulo"),
  "pessoa2"<-list( nome="Caique", idade="24", cidade="Sorocaba"),
  "pessoa3"<-list( nome="Jessica", idade="65", cidade="São Caetano"),
  "pessoa4"<-list( nome="Carol", idade="25", cidade="São Vicente")
)
for(pessoa in dicionario){
  print(paste("Nome:",pessoa$nome, ",Idade:",pessoa$idade, ",cidade:",pessoa$cidade))
}


#Operadores em Python
#Aritmedicos
soma <- 10+20
print(soma)
  
#subtraia 15 de 30
sub <- 15 -30
print(sub)

#Exercicio Mutliplicacao
mult <- 6*7
print(mult)

#Exercicio Divisão
divisao <- 81/9
print(divisao)

#Exercicio Medio: Calcule o expoenciação de 2 elevado a 10
exp <- 2 ^ 10
print(exp)

#Resto da divisao
resto_div <- 29%% 5
print(resto_div)

#--------------------------------------------------------------------------------------------
#Logicos
#Exercicio Facil: verifique se o numero 8 e maior que 5 e imprima o resultado
x <- 5
y <- 8
print(y>x)

#Exercicio Facil: Verifique se o numero 3 e menor ou igual a 10 e imprima o resultado
x<-3
y<-10
print(x<=y)

#Exercicio Facil: Verifique se o numero 7 e maior que 5 e menor que 10 e imprima o resultado
resultado <- 5<7& 7<10
print(resultado)

#Exercicio Medio: Verifique o numero 12 é par e se o resto esta entre 10 e 15 e imprima o resultado. Numero par e aquele que o resto da divisao por 2 e 0
x=12
verifica <- (x %% 2==0) && (12>10 & 12<15)
print(verifica)

#Exercicio Medio: Verifique se um numero e multiplo de 3 ou 5 e se esta entre 20 e 30
numero <-25
resultado = (numero %%3==0 | numero %% 5 ==0) & (numero >20 & numero<30)
print(resultado)

#Exercicio Medio: Crie uma funcao que verificq se uma pessoa e ilegivel para um premio com base nas seguintes condicoes:
#deve ter mais de 18 anos e deve ser um membro ativo, ou deve ter mais de 60 anos
elegivel_para_premio<-function(idade, membro_ativo){
  return (idade >18 && membro_ativo) | (idade >60)
}
print(elegivel_para_premio(25, TRUE))
print(elegivel_para_premio(60, FALSE))
print(elegivel_para_premio(30, FALSE))
                                                 


