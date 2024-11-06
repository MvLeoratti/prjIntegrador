# Vetores em R
# Exercicio Facil Crie um vetor com os numeros de 1 a 10 e imprima-o

vetor <-1:10
print(vetor)

#Exercicio Facil: criar um vetor de 2 a 20 e imprimir

vetor1<-seq(2,20,by=2)
print(vetor1)

#Exercicio Medio: Calcule a soma dos elementos de um vetor com numeros de 1 a 100
vetor2 <-1:100
soma <- sum(vetor2)
print(soma)

#Exercicio Medio: Enontre o maior e menor valor de um vetor de numeros aleatroios entre 1 e 1000
vetor3<-sample(1:1000, 50, replace=TRUE)
maior3<-max(vetor3)
menor3<-min(vetor3)
print(paste("Maior: ",maior3, "Menor e: ",menor3))

# Exercicio Dificil: Criar um vetor com os 10 primeiros numeros primos
e_primo<-function(n){
  if (n<=1){
    return(FALSE)
  }
  for(i in 2:sqrt(n)){
    if(n%%i==0){
      return(FALSE)
    }
  }
  return(TRUE)
}

primos <-c()
num<-2
while (length(primos)<10) {
  if(e_primo(num)){
    primos <-c(primos, num)
  }
  num<-num+1
}
print(primos)


#Exercicio Dificil: Inverta a ordem dos elementos de um vetor de tamanho 20, preenchiso com numeros aleatorios
vetor4<-sample(1:100,20,replace = TRUE)
vetor_invertido<-rev(vetor4)
print(vetor4)
print(vetor_invertido)