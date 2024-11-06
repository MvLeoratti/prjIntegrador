#CLASSE ENDERECO

from datetime import date


class ENDERECO():
    def __init__ (self, logradouro="",numero="",endereco_comercial=False):
        self.logradouro = logradouro
        self.numero = numero
        self.endereco_comercial = endereco_comercial


#Claase PESSOA

class Pesssoa():
    
    def __init__(self, nome="", rendimento=0.0, endereco=None ):
        self.nome = nome
        self.rendimento = rendimento
        self.endereco = endereco
    
    def calcular_imposto(self, rendimento):
        return rendimento

    
#CLASSE PESSOA FISICA

class PessoaFisica(Pesssoa):

    #inicializar
    def __init__(self, nome="", rendimento=0.0, endereco=None, cpf="", dataNascimento=None):

        if endereco is None:
            #Se nenhum enderco NAO for definido, cria um objeto endereco padrao
            endereco = ENDERECO()
        if dataNascimento is None:
            dataNascimento = date.today() 
            super().__init__(nome, rendimento, endereco)
        self.cpf = cpf
        self.dataNascimento = dataNascimento

    def calcular_imposto(self, rendimento:float)->float:
        #Sem Imposto para rendimento ate 1500
        if rendimento<= 1500:
            return 0
        # 2% de imposto para rendimento entre 3500 e 1500
        elif 1500<rendimento<=3500:
            return (rendimento/100) * 2
        # 3.5% de imposto para rendimento entre 3500 e 6000
        elif 3500 < rendimento <=6000:
            return (rendimento /100) *3.5
        # 5% de imposto para rendimento acima de 6000
        else:
            return rendimento * 0.5
        
#PESSOA JURIDICA

class PessoaJuridica(Pesssoa):
    def __init__(self, nome_fantasia="", cnpj="", rendimento=0.0, endereco=None, logradouro=""):
         if endereco is None:
                #Se nenhum enderco NAO for definido, cria um objeto endereco padrao
            endereco = ENDERECO()
            super().__init__(nome_fantasia, rendimento, endereco)
            self.nome_fantasia = nome_fantasia
            self.cnpj = cnpj
            self.rendimento = rendimento
            self.logradouro = logradouro
            
    def calcular_imposto_PJ(self, rendimento:float)->float:
        #Sem Imposto para rendimento ate 5000
        if rendimento<= 5000:
            return 0
        # 1.5% de imposto para rendimento entre 3500 e 5500
        elif 2500<rendimento<=5500:
            return (rendimento/100) * 1.5
        # 5.5% de imposto para rendimento entre 3500 e 6000
        elif 3500 < rendimento <=6000:
            return (rendimento /100) *5.5
        # 5% de imposto para rendimento acima de 10000
        else:
            return rendimento * 15


