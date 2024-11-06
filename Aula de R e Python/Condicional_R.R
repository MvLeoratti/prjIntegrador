#)perdores Condicionais
#Verifique se o numero e positivo
numero<-5
if (numero >0){
  print("O numero e positivo")
}else{
  print("O NUmero e negativo")
}

#Verifique se um palavra tem mai de 5 letras

str01 <- "correspondente"
if (nchar(str01)>5){
  print("A palavra tem mais de 5 letras")
}else
  print("A palavra tem menos de 5 letras")
  
#Verificar se um ano e Bissexto
ano <- 2024
if ((ano%%4==0 && ano%%100!=0) | ano ==400) {
  print("O ano e bissexto")
}else{
  print("O ano Não e Bissexto")
}
  
#2.5.2 Composta

#verificar se um numero esta entre 10 e 20

numero <-14
if (numero>10 && numero<=20){
  print("O numero esta entre 10 e 20")
}else{
  print("O numero NÄO esta entre 10 e 20")
}

#Verifique se uma string contem letras e numros
string <- "abc123"
if (any(grepl("A-Za",string)) & any(grepl("[0-9]",string))){
  print("A String contem e numeros letras")
}else{
  print("A String Não contem e numeros letras")
}


#2.5.3 Encadeada
#Verifique a faixa etaria de uma pessoa (crianca, adolecente, idoso)

idade <-256

if (idade<13){
  print("crianca")
}else{ (idade <18)
  print("Adolecente")
}else (idade< 60){
  print("Adulto")
}else{
  print("Idoso")
}

#Determine a estacao do ano baseada no mes
mes = 5

if (mes %n% c(6,7,8)){
  print("Inverno")
}else if(mes %in% c(9,10,11)){
  print("Primavera")
}else if(mes %in% c(12,1,2)){
  print("Verao")
}else if(mes %in% c(12,1,2)){
  print("Outono")
}else{
  print("Outra Estacao")
} 
  

#Imprima os numeros de 1 a 10
for (i in 10){
  print(i)
}

#Imprima os elementos de um dicionario
dicionario <-lista(a=1,b=2,c=3)
for (chave in names(dicionario)){
  print(paste("chave:", chave, "valor", dicionario[[chave]]))
}
i<-0
i<-while(1<=10){
  print(i)
  i<-i+1
}




