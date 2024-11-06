#R Studio

#Fatores em R
#Exercicios Facil: Crie um vetor de categorias(fatores) com cores "vermelho", "äzul"" e "Verde"
cores<-factor(c("vermelho", "azul", "verde"))
print(cores)

#Exercicios Facil: Crie um vetor para os dias da semana e imprima-os"
semana<-factor(c('segunda','terça','quarta', 'quinta', 'sexta', 'sabado', 'domingo'))
print(semana)

#Exercicios Facil: Crie um vetor "baixo", "medio", "alto" e ordene-os"
niveis<-factor(c("Baixo", "Alto", "Medio"),levels=c("Baixo", "Medio", "Alto"), ordered = TRUE)
print(niveis)

#Exercicios Medio: Converta um vetor de fatores em um vetor numerico
categorias<-factor(c("Baixo", "Alto", "Medio"),levels=c("Baixo", "Medio", "Alto"), ordered = TRUE)
numeros<-as.numeric(categorias)
print(numeros)

#Exercicio Dificil: crie um vetor de fatores com categorias
#"pequeno", "medio", "grande"
tamanhos <- factor(c("grande", "pequeno", "medio"),levels = c("pequeno", "medio", "grande"), ordered = TRUE)
levels(tamanhos)[levels(tamanhos)=="pequeno"]<-"extra-pequeno"
print(tamanhos)

#Exercicio Dificil: Crie um Vetor de fatores com categorias "pequeno", "medio", "grande" e substitua pequeno por extra-pequeno
set.seed(123)
categorias<- c("Baixo", "Medio", "Alto")
vetor <- sample(categorias, 100, replace=TRUE)
fatores<- factor(vetor, levels = categorias, ordered = TRUE)
frequencias <- table(fatores)
print(frequencias)