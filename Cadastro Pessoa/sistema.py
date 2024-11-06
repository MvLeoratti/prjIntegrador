#1- Pessoa Fisica
#2- Pessoa Juridica
#3 - Sair

#1- Pessoa Fisica / 2 Pessoa Juridica/ 3 - Sair
#1 - Cadastrar Pessoa Fisica / 2 - Listar Pessoa Fisica / 3 - Sair
#1 - Cadastrar Pessoa Juridica / 2- Listar Pessoa Juridica / 3- Sair

from datetime import date, datetime
from Pessoa import ENDERECO, PessoaFisica, PessoaJuridica

def main():

    lista_pf = []
    
    while True:
       #Opcao -1 - Cadastrar Pessoa
        opcao = int(input("Escolha uma opcao: 1 - Pessoa Fisica/ 2- Pessoa Juridica"))
        while True:
            if opcao ==1:
                opcao_PF = int(input("Escolha uma opcao: 1- Cadastrar Pessoa Fisica / 2 - Listar Pessoa Fisica / 3- voltar ao menu anterior/ 4- Remover CPF/-5 Atualizar item da lista: "))
                while True:
                    if opcao_PF==1:
                        novaPF = PessoaFisica()
                        novo_end_PF = ENDERECO()

                        novaPF.nome = input("Digite o nome da Pessoa Fisica: ")
                        novaPF.cpf = input("Digite o CPF")
                        novaPF.rendimento = float(input("Digite o rendimento mensal (Digite somente numeros): "))

                        data_nascimento = input("Digite a data de Nascimento (dd/mm/aaaa): ") #Solicita a data de Nascimento
                        novaPF.dataNascimento = datetime.strptime(data_nascimento, '%d/%m/%Y').date()
                        idade = (date.today()- novaPF.dataNascimento).days #// 365

                        if idade>=18:
                            print("A Pessoa tem mais de 18 anos!")
                        else:
                            print("A Pessoa tem menos de 18 anos. Retornando ao menu anteriror!")
                            continue # Retorna ao inicio do loop
                
                        novo_end_PF.logradouro = input("Digite o Logradouro: ")
                        novo_end_PF.numero = input("Digite um Numero: ")
                        end_comercial = input("Este endereco e comercial: S/N: ") # Solicitar se o endereco e comercial ou Nao
                        novo_end_PF.endereco_comercial = end_comercial.strip().upper() == 'S'
                        novaPF.endereco = novo_end_PF

                        lista_pf.append(novaPF)

                        print("Cadastro realizado com Sucesso!!")
                        break
                    elif opcao_PF==2:
                        #Listar Pessoa Fisica
                        if lista_pf:
                            for cada_pf in lista_pf:
                                print(f"Nome: {cada_pf.nome} ")
                                print(f"CPF: {cada_pf.cpf}")
                                print(f"Data Nascimento:  {cada_pf.dataNascimento.strftime('%d/%m/%Y')}")
                                print(f"Imposto a Pagar: {cada_pf.calcular_imposto(cada_pf.rendimento)}")
                                print("Digite 0 para Sair: ")
                                input()
                                
                        else: 
                            print("Lista Vazia")                     
                               
                    elif opcao==4:
                        cpf_removido = int(input("Digite o CPF que sera removido: "))
                        pessoa_encontrada = False
                        for cada_pf in lista_pf:
                            if cpf_removido ==cada_pf.cpf:
                                cada_pf.remove(cpf_removido)
                                pessoa_encontrada = True    
                                print("Item removido da lista")
                                
                                break
                        if not pessoa_encontrada:
                            print("Nenhuma pessoa encontrada")
                               
                    elif opcao_PF ==5 :
                        Nome_procurado = int("Digite o CPF que sera atualizado: ")
                        for cada_pf in lista_pf:
                            if Nome_procurado==cada_pf.nome:
                                cada_pf.replace(Nome_procurado)
                                print("Nome Atualizdo com Sucesso!")
                        
                    
                    
                    elif opcao == 0:
                        print("Voltamos ao menu anterior! ")
                        break
                    else:
                        print("Opcao Invalida, por favor digite uma das opcoes indicadas! ")
            elif opcao==2:
                enderecoPJ = ENDERECO()         
                pj = PessoaJuridica()
                lista_CNPJ =[]
                
                while True:
                    
                    opcao_PJ = int(input("Escolha uma opcao: 1- Cadastrar Pessoa Juridica / 2 - Listar Pessoa Juridica / 3- voltar ao menu anterior/ 4- Remover CNPJ / - 5-Atualizar Item da lista "))
                    
                    if opcao_PJ ==1:
                        pj.nome_fantasia = input("Digite o Nome Fantasia da Empresa: ")
                        pj.cnpj=input("Digite o Numero do CNPJ da Empresa: ")
                        pj.rendimento = float(input("Digite o rendimento mensal (Digite somente numeros): "))
                        pj.logradouro = input("Digite o endereco da Empresa: ")
                                                
                        lista_CNPJ.append(pj)
                        
                    elif opcao_PJ==2:
                        for cada_pj in lista_CNPJ:
                            print(f"Digite o Nome Fanatsia: {pj.nome_fantasia} ")
                            print(f"Digite CNPJ: {pj.cnpj}")
                            print(f"Digite o Logradouro: {pj.logradouro}")
                            print(f"Digite o rendimento da empresa {pj.rendimento}")
                    elif opcao_PJ==4:
                        cnpj_removido = input("Digite o CNPJ que sera removido: ")
                        cnpj_encontrado = False
                        for cada_pj  in lista_CNPJ:
                            if cnpj_removido==cada_pj.cnpj:
                                lista_CNPJ.remove(cnpj_removido)
                                cnpj_encontrado = True 
                                print("CNPJ removido da Lista") 
                            if not cnpj_encontrado:
                                print("Nenhuma CNPJ encontrado") 
                            
                               
                        
                    elif opcao_PJ ==5 :
                        opcao_Alt = int(input("Digite a Opcao que deseja alterar: 1- Nome Fantasia/ - 2- CNPJ /3-Logradouro /-4 Rendimento"))
                        if opcao_Alt==1:
                            Nome_antigo = input("Digite o item que deseja remover")
                            Nome_procurado = int("Digite o Nome da Empresa que sera atualizada: ")
                            for cada_pj in lista_CNPJ:
                                if Nome_procurado==cada_pj.nome_fantasia:
                                    lista_CNPJ.remove(Nome_antigo)
                                    lista_CNPJ.append(Nome_procurado)
                                    print(f"Nome: {Nome_procurado} foi Atualizdo com Sucesso!")
                        elif opcao_Alt==2:
                            cnpj_Procurado = int("Digite o CNPJ da Empresa que sera atualizada: ")
                            for cada_pj in lista_CNPJ:
                                if cnpj_Procurado==cada_pj.cnpj:
                                    cada_pf.replace(cnpj_Procurado)
                                    print(f"Nome: {cnpj_Procurado} foi Atualizdo com Sucesso!")
                        elif opcao_Alt==3:
                            logradouro_Procurado = int("Digite o LOGRADOURO da Empresa que sera atualizada: ")
                            for cada_pj in lista_CNPJ:
                                if logradouro_Procurado==cada_pj.logradouro:
                                    cada_pf.replace(logradouro_Procurado)
                                    print(f"Nome: {logradouro_Procurado} foi Atualizdo com Sucesso!")
                                    
                        elif opcao_Alt==4:
                            rendimento_Procurado = int("Digite o Redimento da Empresa que sera atualizada: ")
                            for cada_pj in lista_CNPJ:
                                if rendimento_Procurado==cada_pj.rendimento:
                                    cada_pf.replace(rendimento_Procurado)
                                    print(f"Nome: {rendimento_Procurado} foi Atualizdo com Sucesso!")
                        
                    elif opcao_PJ == 3:
                        print("Voltamos ao menu anterior! ")
                    else:
                        print("Opcao Invalida, por favor digite uma das opcoes indicadas! ")
               
            elif opcao ==0:
                print("Obrigado por utilizar o nosso sistema! Valeu! ")
            else:
                print("Opcao invlaida! ")
                
               
if __name__== "__main__":
    main() #Chama a funcao principal
                    
                
