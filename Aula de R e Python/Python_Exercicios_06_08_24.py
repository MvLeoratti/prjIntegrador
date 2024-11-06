#Python Script
#Fatores em Python

#Exercicios Facil: Crie um vetor de categorias(fatores) com cores "vermelho", "äzul"" e "Verde"
import pandas as pd
cores = pd.Categorical(['vermelho','azul','verde'])
print(cores)

#Exercicios Facil: Crie um vetor para os dias da semana e imprima-os"
semana = pd.Categorical(['segunda','terça','quarta', 'quinta', 'sexta', 'sabado', 'domingo'])
print(semana)


#Exercicios Facil: Crie um vetor "baixo", "medio", "alto" e ordene-os"
import pandas as pd
niveis = pd.Categorical(["Baixo", "Alto", "Medio"], categories=["Baixo", "Medio", "Alto"], ordered=True)
print(niveis)

#Exercicios Medio: Converta um vetor de fatores em um vetor numerico
import pandas as pd
categorias = pd.Categorical(["Baixo", "Alto", "Medio"], categories=["Baixo", "Medio", "Alto"], ordered=True)
numeros = categorias.codes
print(numeros)

#Exercicio Dificil: crie um vetor de fatores com categorias
#"pequeno", "medio", "grande"
import pandas as pd
tamanhos = pd.Categorical(["pequeno", "medio", "grande" ], categories=["pequeno", "medio", "grande"], ordered = True)
t = tamanhos.rename_categories({"pequeno":"extra-pequeno"})
print(t)

#Exercicio Dificil: Crie um Vetor de fatores com categorias "pequeno", "medio", "grande" e substitua pequeno por extra-pequeno
import pandas as pd
import random
categorias = ["baixo", "medio", "alto"]
vetor = [random.choice(categorias) for _ in range(100)]
fatores = pd.Categorical(vetor, categories=categorias, ordered = True)
frequencias = pd.value_counts(fatores)
print(frequencias)
