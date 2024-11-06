from flask import Flask, jsonify, make_response, request
from bdPrj1 import Carros

#Instanciar o modulo Flask na nossa variavel app
app = Flask('Carros')

#Primeiro metodo - Visualizar Dados (GET)
#o APP.ROUTE -> definir que essa funcao é uma rota para que o flask entenda que o que precisa ser executado
@app.route('/carros', methods=['GET'])
def get_carros():
    return Carros
    

#Primeiro metodo parte 2 - Visualizar dados por ID (GET/ID)
@app.route('/carros/<int:id>', methods=['GET'])
def get_carros_id(id):
    for carro in Carros:
        if carro.get('id')==id:
            return jsonify(carro)
        

#Segundo metodo- Criar novos dados (POST)
@app.route('/carros', methods=['POST'])
def criar_carros():
    carro = request.json
    Carros.append(carro)
    return make_response(
        jsonify(mensagem = 'Carro cadastrado com Sucesso',
                carro=carro)
    )

#Terceiro metodo - Editar dados (PUT)
@app.route('/carros/<int:id>', methods=['PUT'])
def editar_carro_id(id):
    carro_alterado = request.get_json()
    for indice, carro in enumerate(Carros):
        if carro.get('id') == id:
            Carros[indice].update(carro_alterado)
            return jsonify(Carros[indice])

#Quarto metodo - Deletar dados (DELETE)
@app.route('/carros/<int:id>',methods=['DELETE'])
def excluir_carro(id):
    for indice, carro in enumerate(Carros):
        if carro.get('id') == id:
           del Carros[indice]
           return jsonify({"mensagem":"Carro excluido com sucesso"})

app.run(port=5000, host='localhost')