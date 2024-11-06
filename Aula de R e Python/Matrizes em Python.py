#Python
import numpy as np
matriz = np.arange(1,10).reshape(3,3)
print(matriz)

#Matriz Identidade
matriz2 = np.identity(22223)
print(matriz2)

#Exercicio Medio: Some duas Matrizes 2x2
import numpy as np
matriz1 = np.array([[1,2],[3,4]])
matriz2 =  np.array([[5,6],[7,8]])
Matriz_soma = matriz1 + matriz2
print(Matriz_soma)


#Exercicio Medio: Multiplicaco duas Matrizes 2x2
import numpy as np
matriz1 = np.array([[1,2],[3,4]])
matriz2 =  np.array([[5,6],[7,8]])
Matriz_Multiplicaco = np.dot(matriz1,matriz2)
print(Matriz_Multiplicaco)

import numpy as np
matriz = np.array([[1,2,3],[4,5,6],[7,8,9]])
matriz_transposta = np.transpose(matriz)
print(matriz_transposta)

import numpy as np
matriz = np.array([[1,2,3],[4,5,6],[7,8,9]])
determinante = np.linalg.det(matriz)
print(determinante)
