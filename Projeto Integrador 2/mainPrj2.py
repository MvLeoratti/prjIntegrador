from flask import Flask, jsonify, make_response, request

from bdPrj2 import Ambiente

app = Flask("Ambiente")

@app.route('/ambiente',methods=['GET'])
def get_ambiente():
    return Ambiente

@app.route('/ambiente/<int:id>', methods=['GET'])
def get_ambiente_id(id):
    for ambiente in Ambiente:
        if ambiente.get('id')==id:
            return jsonify(ambiente)

@app.route('/ambiente',methods=['POST'])
def criar_ambiente():
    ambiente = request.json
    Ambiente.append(ambiente)
    return make_response(
        jsonify(mensagem = 'Dados do Ambiente criados com sucesso',
                ambiente=ambiente)
    )
@app.route('/ambiente/<int:id>', methods=['PUT'])
def atualizar_dados_ambiente(id):
    ambiente_alterado = request.get_json()
    for indice, ambiente in enumerate(Ambiente):
        if ambiente.get('id') == id:
           Ambiente[indice].update(ambiente_alterado)
           return jsonify(Ambiente[indice])
       
@app.route('/ambiente/<int:id>', methods=['DELETE'])
def excluir_dados_ambiente(id):
    for indice, ambiente in enumerate(Ambiente):
         if ambiente.get('id') == id:
            del Ambiente[indice]
            return jsonify({"mensagem":"Dados do Ambiente excuidos com Sucesso!!"})


app.run(port=5000, host='localhost')