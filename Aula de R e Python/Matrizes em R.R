#Matrizes em R

matriz <- matrix(1:9, nrow = 3, ncol = 3)
print(matriz)


matriz <- diag(4)
print(matriz)


#Exercicio Medio: Some duas Matrizes 2x2
matrix1<- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
matrix2<-matrix(c(5,6,7,8), nrow = 2, ncol = 2)
soma_matrix <- matrix1+matrix2
print(soma_matrix)

#Exercicio Medio: Multiplicacao de duas Matrizes 2x2
matrix1<- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
matrix2<-matrix(c(5,6,7,8), nrow = 2, ncol = 2)
Multiplicacao_matrix <- matrix1 %% matrix2
print(Multiplicacao_matrix)

#Exercicio Dificil: Multiplicacao de duas Matrizes 2x2
matrix2<- matrix(1:9, nrow = 3, ncol = 3)
matrix3<-matrix(1:9, nrow = 3, ncol = 3)
mTransposta = t(matrix2)
print(mTransposta)


#Exercicio Dificil: Calcule o determinante de uma matriz 3x3
matriz5 <-matrix(1:9, nrow= 3, ncol = 3)
determinante <- det(matriz5)
print(determinante)