{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "956b9938",
   "metadata": {},
   "source": [
    "# Bootcamp: Analista de Banco de Dados  - Desafion do Módulo 03"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a546095",
   "metadata": {},
   "source": [
    "<img src=\"./xpe.png\" align='left' alt=\"drawing\" width=\"150\" heigth=\"150\"/>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3b9ef72f",
   "metadata": {},
   "source": [
    "<img src=\"./mongobd.png\" align='center' alt=\"drawing\" width=\"800\" heigth=\"800\"/>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "50207c30",
   "metadata": {},
   "source": [
    "# Objetivos de Ensino\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c0ec5f20",
   "metadata": {},
   "source": [
    "### Exercitar os conceitos vistos em aulas em relação ao banco de dados NoSQL\n",
    " * **A partir de dados da Força Aérea Brasileira sobre a aviação civil\n",
    "Brasileira (CENIPA - Ocorrências Aeronáuticas na Aviação Civil),vamos importar algumas informações no MongoDB para executar análises.**\n",
    " * **Arquivos com os quais trabalharemos:**\n",
    "     * **Ocorrencia.csv - Informações sobre as ocorrências.**\n",
    "     * **Ocorrencia_tipo.csv - Informações sobre o tipo de ocorrência.**\n",
    "     * **Aeronave.csv - Informações sobre as aeronaves envolvidas nas ocorrências.**\n",
    " * **Alguns ajustes foram executados para facilitar nosso estudo, tais como\n",
    "eliminação de caracteres especiais, acentos e ajustes nos campos data e hora\n",
    "para facilitar a importação no MongoDB.**\n",
    "\n",
    "*Fonte: [dados abertos](https://dados.gov.br/dados/conjuntos-dados/ocorrencias-aeronauticas-da-aviacao-civil-brasileira)*\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fe70869c",
   "metadata": {},
   "source": [
    "# Enunciado\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "26598f9b",
   "metadata": {},
   "source": [
    " * **A base de dados de ocorrências aeronáuticas é gerenciada pelo Centro de\n",
    "Investigação e Prevenção de Acidentes Aeronáuticos (CENIPA). Constam nesta\n",
    "base de dados as ocorrências aeronáuticas notificadas ao CENIPA nos últimos\n",
    "10 anos que ocorreram em solo brasileiro.**\n",
    "**Dentre as informações disponíveis estão os dados sobre as aeronaves\n",
    "envolvidas, fatalidades, local, data, horário dos eventos e informações\n",
    "taxonômicas típicas das investigações de acidentes (AIG).**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "75f80470",
   "metadata": {
    "heading_collapsed": true
   },
   "source": [
    "# Etapas do trabalho:\n",
    "<a name=\"ancora\"></a>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2e8b5aa8",
   "metadata": {
    "hidden": true
   },
   "source": [
    "### [a) Abrir o prompt de comando do MongoDB. Vamos criar o database e as collections por lá.](#ancora1.0)\n",
    "### [b) Criar o Database chamado “desafio”.](#ancora1.1)\n",
    "### [c) Criar as collections com validator.](#ancora1.2)\n",
    "### [d) Criar a collection “ocorrencia”.](#ancora1.3)\n",
    "### [e) Criar a collection “ocorrencia_tipo”.](#ancora1.4)\n",
    "### [f) Criar a collection “aeronave”.](#ancora1.5)\n",
    "### [g) Abrir o MongoDB Compass para fazer as importações dos dados.](#ancora1.6)\n",
    "### [h) Carregar a collection “aeronave”.](#ancora1.7)\n",
    "### [i) Carregar a collection “ocorrencia_tipo”.](#ancora1.8)\n",
    "### [j) Carregar a collection “ocorrencia”.](#ancora1.9)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3fcfeb18",
   "metadata": {},
   "source": [
    "# Atividades\n",
    "<a name=\"ancora2\"></a>"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0a6c8181",
   "metadata": {},
   "source": [
    "#### [1. Verifique o número de documentos carregados na collection “ocorrencia”.](#ancora2.1)\n",
    "* Você pode usar a função count() ou db.collection.aggregate com {$sum:1}\\.\n",
    "\n",
    "#### [2. Verifique o número de documentos carregados na collection “ocorrencia_tipo”.](#ancora2.2)\n",
    "* Você pode usar a função count() ou db.collection.aggregate com {$sum:1}.\n",
    "\n",
    "#### [3. Verifique o número de documentos carregados na collection “aeronave”.](#ancora2.3)\n",
    "* Você pode usar a função count() ou db.collection.aggregate com {$sum:1\\}.\n",
    "\n",
    "#### [4. Execute um comando find() na collection aeronave com modelo= 'AB-115' OU tipo_veiculo = 'AVIAO'.](#ancora2.4)\n",
    "* Limite a consulta para trazer apenas os 5 primeiros documentos.\n",
    "    \n",
    "#### [5. Execute um comando find() na collection aeronave onde o tipo_veiculo não são os seguintes tipos: ['AVIAO', 'HELICOPTERO', 'HIDROAVIAO','PLANADOR', 'ANFIBIO']](#ancora2.5)\n",
    "* Limite o resultado da consulta para trazer apenas os 10 primeiros documentos.\n",
    "* A dica é que podemos usar a condição IN para retornar apenas valores que estão dentro de uma lista e o NOT IN para retornar os valores que não estão dentro de uma lista.\n",
    "\n",
    "#### [6. Execute um comando aggregate() na collection aeronave para agrupar os documentos pelo campo tipo_veiculo fazendo uma contagem ($sum:1) para cada tipo_veiculo.](#ancora2.6)\n",
    "\n",
    "#### [7. Execute um comando find() na collection ocorrencia para buscar os documentos com o field num_recomendacoes menor ou igual ($lte) a 2 (<=2). Limite o resultado da sua consulta para 10 documentos.](#ancora2.7)\n",
    "\n",
    "#### [8. Execute um comando aggregate() na collection ocorrencia para buscar os documentos conforme abaixo.](#ancora2.8)\n",
    "* Field num_recomendacoes menor ou igual ($lte) a 2 (<=2).\n",
    "\n",
    "* Agrupar pelo field uf ($uf).\n",
    "\n",
    "* Fazer a contagem ($sum:1).\n",
    "\n",
    "* Ordenar de forma descendente.    \n",
    "             \n",
    "#### [9. Execute um comando aggregate() na collection ocorrencia para buscar amédia dos números de recomendações ($num_recomendacoes).](#ancora2.9)\n",
    "\n",
    "#### [10.Execute um comando lookup aggregate() na collection aeronave fazendo uma junção com a collection ocorrencia. Limite o resultado do lookup aggregate() em dois documentos para facilitar a visão do que acontece.](#ancora2.10)\n",
    "\n",
    "#### [11.Execute um comando lookup aggregate() na collection ocorrencia fazendo uma junção com a collection ocorrencia_tipo. Limite o resultado do lookup aggregate() em dois documentos para facilitar a visão do que acontece.](#ancora2.11)          \n",
    "      \n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35d7491c",
   "metadata": {
    "heading_collapsed": true
   },
   "source": [
    "# Resolução das etapas:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "193380bb",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.0\"></a>\n",
    "**a) Abrir o prompt de comando do MongoDB. Vamos criar o database e as collections por lá.**\n",
    "* **Esse procedimento será realizado com a lib pymongo através de um script em python**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "459a6c55",
   "metadata": {
    "hidden": true
   },
   "outputs": [],
   "source": [
    "# import das libs\n",
    "import pymongo"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "1c67f0c1",
   "metadata": {
    "hidden": true
   },
   "outputs": [],
   "source": [
    "# Conectar ao servidor do MongoDB\n",
    "client = pymongo.MongoClient('localhost', 27017)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "230f27e4",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.1\"></a>\n",
    "**b) Criar o Database chamado “desafio”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "9a122878",
   "metadata": {
    "hidden": true
   },
   "outputs": [],
   "source": [
    "db = client['desafio']"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "d8d84011",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Database(MongoClient(host=['localhost:27017'], document_class=dict, tz_aware=False, connect=True), 'desafio')\n"
     ]
    }
   ],
   "source": [
    "print(db)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bfb0aa12",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3e64ae38",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.2\"></a>\n",
    "### **c) Criar as collections com validator.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e5643961",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.3\"></a>\n",
    "**d) Criar a collection “ocorrencia”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "f8d5eb12",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "A collection 'ocorrencia' foi criada com o validator.\n"
     ]
    }
   ],
   "source": [
    "db = client[\"desafio\"]\n",
    "ocorrencia_collection = db.create_collection(\"ocorrencia\", validator={\n",
    "    \"$jsonSchema\": {\n",
    "        \"bsonType\": \"object\",\n",
    "        \"properties\": {\n",
    "            \"id_ocorrencia\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"description\": \"ID da ocorrência\"\n",
    "            },\n",
    "            \"classificacao\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"cidade\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"uf\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"pais\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"data\": {\n",
    "                \"bsonType\": \"date\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"num_recomendacoes\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"description\": \"is not required\"\n",
    "            }\n",
    "        }\n",
    "    }\n",
    "})\n",
    "\n",
    "# verifica se a collection foi criada com o validator\n",
    "collection_info = db.get_collection(\"ocorrencia\").options()\n",
    "if \"validator\" in collection_info:\n",
    "    print(\"A collection 'ocorrencia' foi criada com o validator.\")\n",
    "else:\n",
    "    print(\"A collection 'ocorrencia' não foi criada com o validator.\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6351be0b",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* **O validator é definido como um dicionário JSON, que define as regras para os campos que serão inseridos na coleção. Neste caso, são definidos os tipos de dados e as propriedades obrigatórias para cada campo.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d68dd164",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c9979109",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.4\"></a>\n",
    "**e) Criar a collection “ocorrencia_tipo” com validator.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "42dedef8",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "A collection 'ocorrencia_tipo' foi criada com o validator.\n"
     ]
    }
   ],
   "source": [
    "# Seleciona o database e cria a collection ocorrencia_tipo com validator\n",
    "db = client.desafio\n",
    "db.create_collection('ocorrencia_tipo', validator={\n",
    "    '$jsonSchema': {\n",
    "        'bsonType': 'object',\n",
    "        'properties': {\n",
    "            'id_ocorrencia_t': {\n",
    "                'bsonType': 'int',\n",
    "                'description': 'is not required'\n",
    "            },\n",
    "            'tipo': {\n",
    "                'bsonType': 'string',\n",
    "                'description': 'is not required'\n",
    "            }\n",
    "        }\n",
    "    }\n",
    "})\n",
    "\n",
    "# verifica se a collection foi criada com o validator\n",
    "collection_info = db.get_collection(\"ocorrencia_tipo\").options()\n",
    "if \"validator\" in collection_info:\n",
    "    print(\"A collection 'ocorrencia_tipo' foi criada com o validator.\")\n",
    "else:\n",
    "    print(\"A collection 'ocorrencia_tipo' não foi criada com o validator.\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8a696297",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "646cf081",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.5\"></a>\n",
    "**f) Criar a collection “aeronave”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "507bcb31",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "A collection 'aeronave' foi criada com o validator.\n"
     ]
    }
   ],
   "source": [
    "# Seleciona o database e cria a collection aeronave com validator\n",
    "db = client[\"desafio\"]\n",
    "aeronave_collection = db[\"aeronave\"] # var para armazenar o nome da collection a ser criada\n",
    "\n",
    "# var para armazenar as configurações do validator\n",
    "aeronave_validator = {\n",
    "    \"$jsonSchema\": {\n",
    "        \"bsonType\": \"object\",\n",
    "        \"required\": [\"assentos\", \"ano_fabricacao\"],\n",
    "        \"properties\": {\n",
    "            \"id_ocorrencia_a\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"matricula\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"operador_categoria\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"tipo_veiculo\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"fabricante\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"modelo\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"motor_tipo\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"motor_quantidade\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"assentos\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"minimum\": 1,\n",
    "                \"maximum\": 1000,\n",
    "                \"description\": \"must be an integer in [1, 1000] and is required\"\n",
    "            },\n",
    "            \"ano_fabricacao\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"minimum\": 1950,\n",
    "                \"maximum\": 2030,\n",
    "                \"description\": \"must be an integer in [1950, 2030] and is required\"\n",
    "            },\n",
    "            \"pais_fabricante\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"registro_segmento\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"voo_origem\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"voo_destino\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"fase_operacao\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            }\n",
    "        }\n",
    "    }\n",
    "}\n",
    "\n",
    "aeronave_collection.drop() # remove a collection se já existir\n",
    "\n",
    "aeronave_collection = db.create_collection(\"aeronave\", validator=aeronave_validator) # cria a collection com o validator.\n",
    "\n",
    "\n",
    "# verifica se a collection foi criada com o validator\n",
    "collection_info = db.get_collection(\"aeronave\").options()\n",
    "if \"validator\" in collection_info:\n",
    "    print(\"A collection 'aeronave' foi criada com o validator.\")\n",
    "else:\n",
    "    print(\"A collection 'aeronave' não foi criada com o validator.\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a90af23d",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ff6e1a0",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.6\"></a>\n",
    "### g) Abrir o MongoDB Compass para fazer as importações dos dados."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "432fd17b",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.7\"></a>\n",
    "**h) Carregar a collection “aeronave”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "cca9defa",
   "metadata": {
    "hidden": true
   },
   "outputs": [],
   "source": [
    "import pandas as pd\n",
    "\n",
    "# Selecionar o banco de dados\n",
    "db = client['desafio']\n",
    "\n",
    "# Selecionar a coleção\n",
    "collection = db['aeronave']\n",
    "\n",
    "# Limpar a coleção antes de importar\n",
    "# collection.remove({})\n",
    "\n",
    "# Ler o arquivo CSV com o pandas\n",
    "df = pd.read_csv('./aeronave.csv', delimiter=';',encoding=\"iso-8859-1\") # necessário usar o encoding pois estava com erro.\n",
    "\n",
    "# Converter o DataFrame para uma lista de dicionários\n",
    "data = df.to_dict('records')\n",
    "\n",
    "# Inserir os documentos na coleção\n",
    "collection.insert_many(data)"
   ]
  },
  {
   "cell_type": "raw",
   "id": "6a1c18ce",
   "metadata": {
    "hidden": true
   },
   "source": [
    "BulkWriteError: batch op errors occurred, full error: {'writeErrors': [{'index': 97, 'code': 121, 'errmsg': 'Document failed validation', 'errInfo': {'failingDocumentId': ObjectId('63f94d0617a43afe40cc737a'), 'details': {'operatorName': '$jsonSchema', 'schemaRulesNotSatisfied': [{'operatorName': 'properties', 'propertiesNotSatisfied': [{'propertyName': 'ano_fabricacao', 'description': 'must be an integer in [1950, 2030] and is required', 'details': [{'operatorName': 'minimum', 'specifiedAs': {'minimum': 1950}, 'reason': 'comparison failed', 'consideredValue': 1946}]}]}]}}, 'op': {'id_ocorrencia_a': 40271, 'matricula': 'PPRTO', 'operador_categoria': '***', 'tipo_veiculo': 'AVIAO', 'fabricante': 'CIA AERONAUTICA PAULISTA', 'modelo': 'CAP-4', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 1946, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'INSTRUCAO', 'voo_origem': 'ENCANTA MOCA', 'voo_destino': 'FAZENDA BUSATO 1', 'fase_operacao': 'DECOLAGEM', '_id': ObjectId('63f94d0617a43afe40cc737a')}}], 'writeConcernErrors': [], 'nInserted': 97, 'nUpserted': 0, 'nMatched': 0, 'nModified': 0, 'nRemoved': 0, 'upserted': []}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6cc3855a",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* **Se observarmos o erro, podemos entender que nosso validator foi criado com restrição para 'ano_fabricação com minimo:1950 e foram encontrados valores abaixo disso como 1946.**\n",
    "* **O erro foi proposital, para verificarmos na pratica as restrições impostas pelo validador.**\n",
    "* **Após corrigir esse erro, conforme o enunciado já sabemos que existe um outro erro com assentos menor do que o mínimo imposto, para poupar o retrabalho vamos realizar as devidas correções, visto que já foi possível entender o propósito.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5c96ff1",
   "metadata": {
    "hidden": true
   },
   "source": [
    "**Para solução desse erro vamos alterar \"ano_fabricação\" mínimo para 1900 e \"assentos\" mínimo para 0, assim conseguimos importar todos os documentos do arquivo aeronave.csv**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "ce663d94",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ok': 1.0}"
      ]
     },
     "execution_count": 31,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Realizando as alterações na collection aeronave.\n",
    "# Seleciona o database \"Desafio\"\n",
    "db = client[\"desafio\"]\n",
    "\n",
    "# Define a nova validação para a collection \"aeronave\"\n",
    "validator = {\n",
    "    \"$jsonSchema\": {\n",
    "        \"bsonType\": \"object\",\n",
    "        \"required\": [\"assentos\", \"ano_fabricacao\"],\n",
    "        \"properties\": {\n",
    "            \"id_ocorrencia_a\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"matricula\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"operador_categoria\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"tipo_veiculo\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"fabricante\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"modelo\": {\n",
    "                \"bsonType\": \"string\",\n",
    "                \"description\": \"is not required\"\n",
    "            },\n",
    "            \"motor_tipo\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"motor_quantidade\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"assentos\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"minimum\": 0,\n",
    "                \"maximum\": 1000,\n",
    "                \"description\": \"must be an integer in [ 0, 1000 ] and is required\"\n",
    "            },\n",
    "            \"ano_fabricacao\": {\n",
    "                \"bsonType\": \"int\",\n",
    "                \"minimum\": 1900,\n",
    "                \"maximum\": 2030,\n",
    "                \"description\": \"must be an integer in [ 1900, 2030 ] and is required\"\n",
    "            },\n",
    "            \"pais_fabricante\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"registro_segmento\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"voo_origem\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"voo_destino\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            },\n",
    "            \"fase_operacao\": {\n",
    "                \"bsonType\": \"string\"\n",
    "            }\n",
    "        }\n",
    "    }\n",
    "}\n",
    "\n",
    "# Executa o comando \"collMod\" para atualizar a validação da collection \"aeronave\"\n",
    "db.command({\"collMod\": \"aeronave\", \"validator\": validator})"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "0cd4478b",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "5303"
      ]
     },
     "execution_count": 36,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# Quantidade de registro inclusos no arquivo csv.\n",
    "df.count()[0]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f29994d4",
   "metadata": {
    "hidden": true
   },
   "source": [
    "**Agora vamos realizar a carga novamente**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 44,
   "id": "e1c8876c",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "O arquivo foi carregado com sucesso!\n",
      "==================================================\n",
      "Total de documentos:5303\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "# Selecionar o banco de dados\n",
    "db = client['desafio']\n",
    "\n",
    "# Selecionar a coleção\n",
    "collection = db['aeronave']\n",
    "\n",
    "# Limpar a coleção antes de importar para evitar erros\n",
    "collection.delete_many({})\n",
    "\n",
    "# Ler o arquivo CSV com o pandas\n",
    "df = pd.read_csv('./aeronave.csv', delimiter=';',encoding=\"iso-8859-1\")\n",
    "\n",
    "# Converter o DataFrame para uma lista de dicionários\n",
    "data = df.to_dict('records')\n",
    "\n",
    "# Inserir os documentos na coleção\n",
    "collection.insert_many(data)\n",
    "\n",
    "# Verifique o número de documentos na coleção\n",
    "num_docs = db.aeronave.count_documents({})\n",
    "expected_num_docs = 5303  # número de documentos esperados no arquivo csv já verificado\n",
    "\n",
    "if num_docs == expected_num_docs:\n",
    "    print(\"O arquivo foi carregado com sucesso!\")\n",
    "    print('='*50)\n",
    "    print(f'Total de documentos:{num_docs}')\n",
    "    print('='*50)\n",
    "else:\n",
    "    print(\"Ocorreu um erro durante o carregamento do arquivo.\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "283a5ca8",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8de95e24",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.8\"></a>\n",
    "**i) Carregar a collection “ocorrencia_tipo”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 45,
   "id": "12df3965",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "O arquivo foi carregado com sucesso!\n",
      "==================================================\n",
      "Total de documentos:5337\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "# Selecionar o banco de dados\n",
    "db = client['desafio']\n",
    "\n",
    "# Selecionar a coleção\n",
    "collection = db['ocorrencia_tipo']\n",
    "\n",
    "# Limpar a coleção antes de importar para evitar erros\n",
    "collection.delete_many({})\n",
    "\n",
    "# Ler o arquivo CSV com o pandas\n",
    "df = pd.read_csv('./ocorrencia_tipo.csv', delimiter=';',encoding=\"iso-8859-1\")\n",
    "\n",
    "# Converter o DataFrame para uma lista de dicionários\n",
    "data = df.to_dict('records')\n",
    "\n",
    "# Inserir os documentos na coleção\n",
    "collection.insert_many(data)\n",
    "\n",
    "# Verifique o número de documentos na coleção\n",
    "num_docs = db.ocorrencia_tipo.count_documents({})\n",
    "expected_num_docs = df.count()[0]  # número de documentos esperados no arquivo csv\n",
    "\n",
    "if num_docs == expected_num_docs:\n",
    "    print(\"O arquivo foi carregado com sucesso!\")\n",
    "    print('='*50)\n",
    "    print(f'Total de documentos:{num_docs}')\n",
    "    print('='*50)\n",
    "else:\n",
    "    print(\"Ocorreu um erro durante o carregamento do arquivo.\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e7f3e372",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e8a0b321",
   "metadata": {
    "hidden": true
   },
   "source": [
    "<a id=\"ancora1.9\"></a>\n",
    "**j) Carregar a collection “ocorrencia”.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b5912040",
   "metadata": {
    "hidden": true
   },
   "outputs": [],
   "source": [
    "# Selecionar o banco de dados\n",
    "db = client['desafio']\n",
    "\n",
    "# Selecionar a coleção\n",
    "collection = db['ocorrencia']\n",
    "\n",
    "# Limpar a coleção antes de importar para evitar erros\n",
    "collection.delete_many({})\n",
    "\n",
    "# Ler o arquivo CSV com o pandas\n",
    "df = pd.read_csv('./ocorrencia.csv', delimiter=';',encoding=\"iso-8859-1\")\n",
    "\n",
    "# Converter o DataFrame para uma lista de dicionários\n",
    "data = df.to_dict('records')\n",
    "\n",
    "# Inserir os documentos na coleção\n",
    "collection.insert_many(data)\n",
    "\n",
    "# Verifique o número de documentos na coleção\n",
    "num_docs = db.ocorrencia.count_documents({})\n",
    "expected_num_docs = df.count()[0]  # número de documentos esperados no arquivo csv\n",
    "\n",
    "if num_docs == expected_num_docs:\n",
    "    print(\"O arquivo foi carregado com sucesso!\")\n",
    "    print('='*50)\n",
    "    print(f'Total de documentos:{num_docs}')\n",
    "    print('='*50)\n",
    "else:\n",
    "    print(\"Ocorreu um erro durante o carregamento do arquivo.\")"
   ]
  },
  {
   "cell_type": "raw",
   "id": "f97c8af0",
   "metadata": {
    "hidden": true
   },
   "source": [
    "BulkWriteError: batch op errors occurred, full error: {'writeErrors': [{'index': 0, 'code': 121, 'errmsg': 'Document failed validation', 'errInfo': {'failingDocumentId': ObjectId('63f9581517a43afe40cd045f'), 'details': {'operatorName': '$jsonSchema', 'schemaRulesNotSatisfied': [{'operatorName': 'properties', 'propertiesNotSatisfied': [{'propertyName': 'data', 'description': 'is not required', 'details': [{'operatorName': 'bsonType', 'specifiedAs': {'bsonType': 'date'}, 'reason': 'type did not match', 'consideredValue': '2010-02-07T17:40:00Z', 'consideredType': 'string'}]}]}]}}, 'op': {'id_ocorrencia': 39115, 'classificacao': 'ACIDENTE', 'cidade': 'CORRENTINA', 'uf': 'BA', 'pais': 'BRASIL', 'data': '2010-02-07T17:40:00Z', 'num_recomendacoes': 2, '_id': ObjectId('63f9581517a43afe40cd045f')}}], 'writeConcernErrors': [], 'nInserted': 0, 'nUpserted': 0, 'nMatched': 0, 'nModified': 0, 'nRemoved': 0, 'upserted': []}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e489890b",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* **Ocorreu esse erro inesperado que está fora do enunciado pois estamos realizando o desafio todo via python.**\n",
    "* **Bom aqui podemos perceber que o erro ocorre em Data pois nosso resultado foi do tipo string e a validação imposta foi tipo data.**\n",
    "* **Vamos examinar o formato que o pandas carregou para descobrirmos se o erro ocorreu durante ou após o carregamento do dataframe.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 47,
   "id": "a38f1022",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "<class 'pandas.core.frame.DataFrame'>\n",
      "RangeIndex: 5242 entries, 0 to 5241\n",
      "Data columns (total 7 columns):\n",
      " #   Column             Non-Null Count  Dtype \n",
      "---  ------             --------------  ----- \n",
      " 0   id_ocorrencia      5242 non-null   int64 \n",
      " 1   classificacao      5242 non-null   object\n",
      " 2   cidade             5242 non-null   object\n",
      " 3   uf                 5242 non-null   object\n",
      " 4   pais               5242 non-null   object\n",
      " 5   data               5242 non-null   object\n",
      " 6   num_recomendacoes  5242 non-null   int64 \n",
      "dtypes: int64(2), object(5)\n",
      "memory usage: 286.8+ KB\n"
     ]
    }
   ],
   "source": [
    "df.info()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4a66aead",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* **Conforme as informações acima, podemos concluir que 'data' foi carregado como object e não como data, causa possível do erro**\n",
    "* **Podemos converter essa variável durante o próprio carregamento, vamos experimentar**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "id": "6e3a0898",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Defaulting to user installation because normal site-packages is not writeable\n",
      "Collecting iso8601\n",
      "  Downloading iso8601-1.1.0-py3-none-any.whl (9.9 kB)\n",
      "Installing collected packages: iso8601\n",
      "Successfully installed iso8601-1.1.0\n"
     ]
    }
   ],
   "source": [
    "# necessário a intalação para conveter 'data' para o tipo date\n",
    "#!pip install iso8601\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 102,
   "id": "24658804",
   "metadata": {
    "hidden": true
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "O arquivo foi carregado com sucesso!\n",
      "==================================================\n",
      "Total de documentos:5242\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "from iso8601 import parse_date # import for !pip install iso8601 pois o pandas não conseguiu converter sozinho.\n",
    "\n",
    "#função para converter o atributo 'data' para o tipo date.\n",
    "def my_date_parser(date_string):\n",
    "    return parse_date(date_string)\n",
    "\n",
    "# Selecionar o banco de dados\n",
    "db = client['desafio']\n",
    "\n",
    "# Selecionar a coleção\n",
    "collection = db['ocorrencia']\n",
    "\n",
    "# Limpar a coleção antes de importar para evitar erros\n",
    "collection.delete_many({})\n",
    "\n",
    "# Ler o arquivo CSV com o pandas\n",
    "df = pd.read_csv('./ocorrencia.csv', delimiter=';', parse_dates=['data'], date_parser=my_date_parser, encoding=\"iso-8859-1\") # resolvendo o problema do tipo date\n",
    "\n",
    "# Converter o DataFrame para uma lista de dicionários\n",
    "data = df.to_dict('records')\n",
    "\n",
    "# Inserir os documentos na coleção\n",
    "collection.insert_many(data)\n",
    "\n",
    "# Verifique o número de documentos na coleção\n",
    "num_docs = db.ocorrencia.count_documents({})\n",
    "expected_num_docs = df.count()[0]  # número de documentos esperados no arquivo csv\n",
    "\n",
    "if num_docs == expected_num_docs:\n",
    "    print(\"O arquivo foi carregado com sucesso!\")\n",
    "    print('='*50)\n",
    "    print(f'Total de documentos:{num_docs}')\n",
    "    print('='*50)\n",
    "else:\n",
    "    print(\"Ocorreu um erro durante o carregamento do arquivo.\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7c7027c2",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* **Com isso termimanos a parte Carregamento, vamos seguir com as atividades propostas.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c66bc828",
   "metadata": {
    "hidden": true
   },
   "source": [
    "* [voltar](#ancora)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21912a90",
   "metadata": {},
   "source": [
    "# Resolução das atividades:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "82bfcf3e",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.1\"></a>\n",
    "**1. Verifique o número de documentos carregados na collection “ocorrencia”.**\n",
    "* Você pode usar a função count() ou db.collection.aggregate com {$sum:1}.*"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7fffaa57",
   "metadata": {},
   "source": [
    "* **Usando a função count()**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 109,
   "id": "d41b5208",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função count:5242\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "ocorrencia = db['ocorrencia']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = ocorrencia.count_documents({})\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função count:{count}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b31397be",
   "metadata": {},
   "source": [
    "* **Usando a função aggregate().**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 108,
   "id": "c699bfd9",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função aggregate:5242\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "ocorrencia = db['ocorrencia']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = ocorrencia.aggregate([{\"$group\": {\"_id\": None, \"count\": {\"$sum\": 1}}}])\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função aggregate:{count.next()[\"count\"]}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "468c9b3a",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8bedaac0",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.2\"></a>\n",
    "**2. Verifique o número de documentos carregados na collection “ocorrencia_tipo”.** \n",
    "* Você pode usar a função count() ou db.collection.aggregate com {$sum:1}.*"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0627f083",
   "metadata": {},
   "source": [
    "* **Usando a função count()**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 111,
   "id": "5367f601",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função count:5337\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "ocorrencia_tipo = db['ocorrencia_tipo']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = ocorrencia_tipo.count_documents({})\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função count:{count}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a713e253",
   "metadata": {},
   "source": [
    " **Usando a função aggregate().**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 112,
   "id": "42a015ba",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função aggregate:5337\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "ocorrencia_tipo = db['ocorrencia_tipo']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = ocorrencia_tipo.aggregate([{\"$group\": {\"_id\": None, \"count\": {\"$sum\": 1}}}])\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função aggregate:{count.next()[\"count\"]}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "14d54071",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "89a4eb2b",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.3\"></a>\n",
    "## 3. Verifique o número de documentos carregados na collection “aeronave”. \n",
    "*Você pode usar a função count() ou db.collection.aggregate com {$sum:1}.*"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "95905882",
   "metadata": {},
   "source": [
    "* **Usando a função count()**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 113,
   "id": "91ed6ea2",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função count:5303\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "aeronave = db['aeronave']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = aeronave.count_documents({})\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função count:{count}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b010cfea",
   "metadata": {},
   "source": [
    " **Usando a função aggregate().**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 114,
   "id": "e6954335",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "==================================================\n",
      "Total de documentos com a função aggregate:5303\n",
      "==================================================\n"
     ]
    }
   ],
   "source": [
    "#Acesso a collection\n",
    "aeronave = db['aeronave']\n",
    "\n",
    "# Contagem de documentos na collection\n",
    "count = aeronave.aggregate([{\"$group\": {\"_id\": None, \"count\": {\"$sum\": 1}}}])\n",
    "print('='*50)\n",
    "print(f'Total de documentos com a função aggregate:{count.next()[\"count\"]}')\n",
    "print('='*50)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "060750b5",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "581c4e7f",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.4\"></a>\n",
    "## 4. Execute um comando find() na collection aeronave com modelo= 'AB-115' OU tipo_veiculo = 'AVIAO'.\n",
    "\n",
    "*Limite a consulta para trazer apenas os 5 primeiros documentos.*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 132,
   "id": "47dbc9ed",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': ObjectId('63f9579917a43afe40ccdacf'), 'id_ocorrencia_a': 39115, 'matricula': 'PTNQX', 'operador_categoria': '***', 'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-711A', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 4, 'ano_fabricacao': 1979, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'PARTICULAR', 'voo_origem': 'BRIGADEIRO ARARIPE MACEDO', 'voo_destino': 'CORRENTINA', 'fase_operacao': 'DECOLAGEM'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdad0'), 'id_ocorrencia_a': 39155, 'matricula': 'PTLVI', 'operador_categoria': '***', 'tipo_veiculo': 'AVIAO', 'fabricante': 'BEECH AIRCRAFT', 'modelo': 'C90', 'motor_tipo': 'TURBOELICE', 'motor_quantidade': 'BIMOTOR', 'assentos': 8, 'ano_fabricacao': 1979, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'PARTICULAR', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'DECOLAGEM'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdad1'), 'id_ocorrencia_a': 39156, 'matricula': 'PPPTO', 'operador_categoria': '***', 'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A', 'motor_tipo': 'TURBOELICE', 'motor_quantidade': 'BIMOTOR', 'assentos': 73, 'ano_fabricacao': 2008, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'REGULAR', 'voo_origem': 'AFONSO PENA', 'voo_destino': 'ADALBERTO MENDES DA SILVA', 'fase_operacao': 'ARREMETIDA NO AR'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdad2'), 'id_ocorrencia_a': 39158, 'matricula': 'PRLGJ', 'operador_categoria': 'REGULAR', 'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '757-225', 'motor_tipo': 'JATO', 'motor_quantidade': 'BIMOTOR', 'assentos': 5, 'ano_fabricacao': 1984, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'REGULAR', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'SUBIDA'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdad3'), 'id_ocorrencia_a': 39176, 'matricula': 'PRMAA', 'operador_categoria': 'REGULAR', 'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A320-232', 'motor_tipo': 'JATO', 'motor_quantidade': 'BIMOTOR', 'assentos': 184, 'ano_fabricacao': 2001, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'REGULAR', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'SUBIDA'}\n"
     ]
    }
   ],
   "source": [
    "# Acessando a coleção 'aeronave'\n",
    "aeronave = db[\"aeronave\"]\n",
    "\n",
    "# Consultando aeronaves onde o modelo é 'AB-115' OU o tipo_veiculo é 'AVIAO'\n",
    "query = {\"$or\": [{\"modelo\": \"AB-115\"}, {\"tipo_veiculo\": \"AVIAO\"}]}\n",
    "result = aeronave.find(query).limit(5)\n",
    "\n",
    "# Imprimindo os resultados\n",
    "for r in result:\n",
    "    print(r)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47ef4144",
   "metadata": {},
   "source": [
    "* **OU podemos exibir de uma forma mais elegante com Pandas DataFrame**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 134,
   "id": "3fcf943a",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>id_ocorrencia_a</th>\n",
       "      <th>matricula</th>\n",
       "      <th>operador_categoria</th>\n",
       "      <th>tipo_veiculo</th>\n",
       "      <th>fabricante</th>\n",
       "      <th>modelo</th>\n",
       "      <th>motor_tipo</th>\n",
       "      <th>motor_quantidade</th>\n",
       "      <th>assentos</th>\n",
       "      <th>ano_fabricacao</th>\n",
       "      <th>pais_fabricante</th>\n",
       "      <th>registro_segmento</th>\n",
       "      <th>voo_origem</th>\n",
       "      <th>voo_destino</th>\n",
       "      <th>fase_operacao</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>63f9579917a43afe40ccdacf</td>\n",
       "      <td>39115</td>\n",
       "      <td>PTNQX</td>\n",
       "      <td>***</td>\n",
       "      <td>AVIAO</td>\n",
       "      <td>NEIVA INDUSTRIA AERONAUTICA</td>\n",
       "      <td>EMB-711A</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>4</td>\n",
       "      <td>1979</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>PARTICULAR</td>\n",
       "      <td>BRIGADEIRO ARARIPE MACEDO</td>\n",
       "      <td>CORRENTINA</td>\n",
       "      <td>DECOLAGEM</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>63f9579917a43afe40ccdad0</td>\n",
       "      <td>39155</td>\n",
       "      <td>PTLVI</td>\n",
       "      <td>***</td>\n",
       "      <td>AVIAO</td>\n",
       "      <td>BEECH AIRCRAFT</td>\n",
       "      <td>C90</td>\n",
       "      <td>TURBOELICE</td>\n",
       "      <td>BIMOTOR</td>\n",
       "      <td>8</td>\n",
       "      <td>1979</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>PARTICULAR</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>DECOLAGEM</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>63f9579917a43afe40ccdad1</td>\n",
       "      <td>39156</td>\n",
       "      <td>PPPTO</td>\n",
       "      <td>***</td>\n",
       "      <td>AVIAO</td>\n",
       "      <td>AEROSPATIALE AND ALENIA</td>\n",
       "      <td>ATR-72-212A</td>\n",
       "      <td>TURBOELICE</td>\n",
       "      <td>BIMOTOR</td>\n",
       "      <td>73</td>\n",
       "      <td>2008</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>REGULAR</td>\n",
       "      <td>AFONSO PENA</td>\n",
       "      <td>ADALBERTO MENDES DA SILVA</td>\n",
       "      <td>ARREMETIDA NO AR</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>63f9579917a43afe40ccdad2</td>\n",
       "      <td>39158</td>\n",
       "      <td>PRLGJ</td>\n",
       "      <td>REGULAR</td>\n",
       "      <td>AVIAO</td>\n",
       "      <td>BOEING COMPANY</td>\n",
       "      <td>757-225</td>\n",
       "      <td>JATO</td>\n",
       "      <td>BIMOTOR</td>\n",
       "      <td>5</td>\n",
       "      <td>1984</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>REGULAR</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>SUBIDA</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>63f9579917a43afe40ccdad3</td>\n",
       "      <td>39176</td>\n",
       "      <td>PRMAA</td>\n",
       "      <td>REGULAR</td>\n",
       "      <td>AVIAO</td>\n",
       "      <td>AIRBUS INDUSTRIE</td>\n",
       "      <td>A320-232</td>\n",
       "      <td>JATO</td>\n",
       "      <td>BIMOTOR</td>\n",
       "      <td>184</td>\n",
       "      <td>2001</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>REGULAR</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>SUBIDA</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                        _id  id_ocorrencia_a matricula operador_categoria  \\\n",
       "0  63f9579917a43afe40ccdacf            39115     PTNQX                ***   \n",
       "1  63f9579917a43afe40ccdad0            39155     PTLVI                ***   \n",
       "2  63f9579917a43afe40ccdad1            39156     PPPTO                ***   \n",
       "3  63f9579917a43afe40ccdad2            39158     PRLGJ            REGULAR   \n",
       "4  63f9579917a43afe40ccdad3            39176     PRMAA            REGULAR   \n",
       "\n",
       "  tipo_veiculo                   fabricante       modelo  motor_tipo  \\\n",
       "0        AVIAO  NEIVA INDUSTRIA AERONAUTICA     EMB-711A      PISTAO   \n",
       "1        AVIAO               BEECH AIRCRAFT          C90  TURBOELICE   \n",
       "2        AVIAO      AEROSPATIALE AND ALENIA  ATR-72-212A  TURBOELICE   \n",
       "3        AVIAO               BOEING COMPANY      757-225        JATO   \n",
       "4        AVIAO             AIRBUS INDUSTRIE     A320-232        JATO   \n",
       "\n",
       "  motor_quantidade  assentos  ano_fabricacao pais_fabricante  \\\n",
       "0        MONOMOTOR         4            1979          BRASIL   \n",
       "1          BIMOTOR         8            1979          BRASIL   \n",
       "2          BIMOTOR        73            2008          BRASIL   \n",
       "3          BIMOTOR         5            1984          BRASIL   \n",
       "4          BIMOTOR       184            2001          BRASIL   \n",
       "\n",
       "  registro_segmento                 voo_origem                voo_destino  \\\n",
       "0        PARTICULAR  BRIGADEIRO ARARIPE MACEDO                 CORRENTINA   \n",
       "1        PARTICULAR          FORA DE AERODROMO          FORA DE AERODROMO   \n",
       "2           REGULAR                AFONSO PENA  ADALBERTO MENDES DA SILVA   \n",
       "3           REGULAR          FORA DE AERODROMO          FORA DE AERODROMO   \n",
       "4           REGULAR          FORA DE AERODROMO          FORA DE AERODROMO   \n",
       "\n",
       "      fase_operacao  \n",
       "0         DECOLAGEM  \n",
       "1         DECOLAGEM  \n",
       "2  ARREMETIDA NO AR  \n",
       "3            SUBIDA  \n",
       "4            SUBIDA  "
      ]
     },
     "execution_count": 134,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "pd.DataFrame(list(aeronave.find(query).limit(5)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d7b5e2f7",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "23b38083",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.5\"></a>\n",
    "## 5. Execute um comando find() na collection aeronave onde o tipo_veiculo não são os seguintes tipos: ['AVIAO', 'HELICOPTERO', 'HIDROAVIAO','PLANADOR', 'ANFIBIO']\n",
    "\n",
    "*Limite o resultado da consulta para trazer apenas os 10 primeiros documentos.*\n",
    "*A dica é que podemos usar a condição IN para retornar apenas valores que estão dentro de uma lista e o NOT IN para retornar os valores que não estão dentro de uma lista.*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 138,
   "id": "dc0a7309",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': ObjectId('63f9579917a43afe40ccdad7'), 'id_ocorrencia_a': 39295, 'matricula': 'PUFLK', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'RV-9', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2004, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'APROXIMACAO FINAL'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdae0'), 'id_ocorrencia_a': 39323, 'matricula': 'PUMEL', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'MISTRAL 582C', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2000, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'SUBIDA'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb2a'), 'id_ocorrencia_a': 40261, 'matricula': 'PUEPM', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'EDSON PIMENTEL MATHEUS', 'modelo': 'MAX M22', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2002, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'POUSO'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb42'), 'id_ocorrencia_a': 40318, 'matricula': 'PUDAB', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'FK9 MK3', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2000, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'SUBIDA'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb6f'), 'id_ocorrencia_a': 40821, 'matricula': 'PUFDN', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'CHS AMAZONAS IMP E EXP LTDA', 'modelo': 'SEAMAX M22', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2008, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'DECOLAGEM'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb79'), 'id_ocorrencia_a': 40843, 'matricula': 'PURIZ', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'CONQUEST 180', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2009, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'DECOLAGEM'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb99'), 'id_ocorrencia_a': 41482, 'matricula': 'PUCEP', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'EXCEL CARGO', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2009, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'MANOBRA'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdb9d'), 'id_ocorrencia_a': 41488, 'matricula': 'PUJPF', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'PARADISE', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2005, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'POUSO'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdba3'), 'id_ocorrencia_a': 41573, 'matricula': 'PULAY', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'LIGHTNING', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 2, 'ano_fabricacao': 2008, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'CIRCUITO DE TRAFEGO'}\n",
      "{'_id': ObjectId('63f9579917a43afe40ccdbbc'), 'id_ocorrencia_a': 41729, 'matricula': 'PUHRJ', 'operador_categoria': 'EXPERIMENTAL', 'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'FABRICACAO PROPRIA', 'modelo': 'TRIKE', 'motor_tipo': 'PISTAO', 'motor_quantidade': 'MONOMOTOR', 'assentos': 1, 'ano_fabricacao': 1900, 'pais_fabricante': 'BRASIL', 'registro_segmento': 'EXPERIMENTAL', 'voo_origem': 'FORA DE AERODROMO', 'voo_destino': 'FORA DE AERODROMO', 'fase_operacao': 'VOO A BAIXA ALTURA'}\n"
     ]
    }
   ],
   "source": [
    "#var para collection \n",
    "aeronave = db[\"aeronave\"]\n",
    "#var para resultados não desejados\n",
    "tipos_excluidos = ['AVIAO', 'HELICOPTERO', 'HIDROAVIAO', 'PLANADOR', 'ANFIBIO']\n",
    "\n",
    "resultado = aeronave.find({\"tipo_veiculo\": {\"$nin\": tipos_excluidos}}).limit(10)\n",
    "\n",
    "for r in resultado:\n",
    "    print(r)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fac68203",
   "metadata": {},
   "source": [
    "* **Melhorando a visualização**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 139,
   "id": "617fcbbd",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>id_ocorrencia_a</th>\n",
       "      <th>matricula</th>\n",
       "      <th>operador_categoria</th>\n",
       "      <th>tipo_veiculo</th>\n",
       "      <th>fabricante</th>\n",
       "      <th>modelo</th>\n",
       "      <th>motor_tipo</th>\n",
       "      <th>motor_quantidade</th>\n",
       "      <th>assentos</th>\n",
       "      <th>ano_fabricacao</th>\n",
       "      <th>pais_fabricante</th>\n",
       "      <th>registro_segmento</th>\n",
       "      <th>voo_origem</th>\n",
       "      <th>voo_destino</th>\n",
       "      <th>fase_operacao</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>63f9579917a43afe40ccdad7</td>\n",
       "      <td>39295</td>\n",
       "      <td>PUFLK</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>RV-9</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2004</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>APROXIMACAO FINAL</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>63f9579917a43afe40ccdae0</td>\n",
       "      <td>39323</td>\n",
       "      <td>PUMEL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>MISTRAL 582C</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2000</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>SUBIDA</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>63f9579917a43afe40ccdb2a</td>\n",
       "      <td>40261</td>\n",
       "      <td>PUEPM</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>EDSON PIMENTEL MATHEUS</td>\n",
       "      <td>MAX M22</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2002</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>POUSO</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>63f9579917a43afe40ccdb42</td>\n",
       "      <td>40318</td>\n",
       "      <td>PUDAB</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>FK9 MK3</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2000</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>SUBIDA</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>63f9579917a43afe40ccdb6f</td>\n",
       "      <td>40821</td>\n",
       "      <td>PUFDN</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>CHS AMAZONAS IMP E EXP LTDA</td>\n",
       "      <td>SEAMAX M22</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2008</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>DECOLAGEM</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>63f9579917a43afe40ccdb79</td>\n",
       "      <td>40843</td>\n",
       "      <td>PURIZ</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>CONQUEST 180</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2009</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>DECOLAGEM</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6</th>\n",
       "      <td>63f9579917a43afe40ccdb99</td>\n",
       "      <td>41482</td>\n",
       "      <td>PUCEP</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>EXCEL CARGO</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2009</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>MANOBRA</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>63f9579917a43afe40ccdb9d</td>\n",
       "      <td>41488</td>\n",
       "      <td>PUJPF</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>PARADISE</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2005</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>POUSO</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>8</th>\n",
       "      <td>63f9579917a43afe40ccdba3</td>\n",
       "      <td>41573</td>\n",
       "      <td>PULAY</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>***</td>\n",
       "      <td>LIGHTNING</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>2</td>\n",
       "      <td>2008</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>CIRCUITO DE TRAFEGO</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>9</th>\n",
       "      <td>63f9579917a43afe40ccdbbc</td>\n",
       "      <td>41729</td>\n",
       "      <td>PUHRJ</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>FABRICACAO PROPRIA</td>\n",
       "      <td>TRIKE</td>\n",
       "      <td>PISTAO</td>\n",
       "      <td>MONOMOTOR</td>\n",
       "      <td>1</td>\n",
       "      <td>1900</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>EXPERIMENTAL</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>FORA DE AERODROMO</td>\n",
       "      <td>VOO A BAIXA ALTURA</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                        _id  id_ocorrencia_a matricula operador_categoria  \\\n",
       "0  63f9579917a43afe40ccdad7            39295     PUFLK       EXPERIMENTAL   \n",
       "1  63f9579917a43afe40ccdae0            39323     PUMEL       EXPERIMENTAL   \n",
       "2  63f9579917a43afe40ccdb2a            40261     PUEPM       EXPERIMENTAL   \n",
       "3  63f9579917a43afe40ccdb42            40318     PUDAB       EXPERIMENTAL   \n",
       "4  63f9579917a43afe40ccdb6f            40821     PUFDN       EXPERIMENTAL   \n",
       "5  63f9579917a43afe40ccdb79            40843     PURIZ       EXPERIMENTAL   \n",
       "6  63f9579917a43afe40ccdb99            41482     PUCEP       EXPERIMENTAL   \n",
       "7  63f9579917a43afe40ccdb9d            41488     PUJPF       EXPERIMENTAL   \n",
       "8  63f9579917a43afe40ccdba3            41573     PULAY       EXPERIMENTAL   \n",
       "9  63f9579917a43afe40ccdbbc            41729     PUHRJ       EXPERIMENTAL   \n",
       "\n",
       "  tipo_veiculo                   fabricante        modelo motor_tipo  \\\n",
       "0    ULTRALEVE                          ***          RV-9     PISTAO   \n",
       "1    ULTRALEVE                          ***  MISTRAL 582C     PISTAO   \n",
       "2    ULTRALEVE       EDSON PIMENTEL MATHEUS       MAX M22     PISTAO   \n",
       "3    ULTRALEVE                          ***       FK9 MK3     PISTAO   \n",
       "4    ULTRALEVE  CHS AMAZONAS IMP E EXP LTDA    SEAMAX M22     PISTAO   \n",
       "5    ULTRALEVE                          ***  CONQUEST 180     PISTAO   \n",
       "6    ULTRALEVE                          ***   EXCEL CARGO     PISTAO   \n",
       "7    ULTRALEVE                          ***      PARADISE     PISTAO   \n",
       "8    ULTRALEVE                          ***     LIGHTNING     PISTAO   \n",
       "9    ULTRALEVE           FABRICACAO PROPRIA         TRIKE     PISTAO   \n",
       "\n",
       "  motor_quantidade  assentos  ano_fabricacao pais_fabricante  \\\n",
       "0        MONOMOTOR         2            2004          BRASIL   \n",
       "1        MONOMOTOR         2            2000          BRASIL   \n",
       "2        MONOMOTOR         2            2002          BRASIL   \n",
       "3        MONOMOTOR         2            2000          BRASIL   \n",
       "4        MONOMOTOR         2            2008          BRASIL   \n",
       "5        MONOMOTOR         2            2009          BRASIL   \n",
       "6        MONOMOTOR         2            2009          BRASIL   \n",
       "7        MONOMOTOR         2            2005          BRASIL   \n",
       "8        MONOMOTOR         2            2008          BRASIL   \n",
       "9        MONOMOTOR         1            1900          BRASIL   \n",
       "\n",
       "  registro_segmento         voo_origem        voo_destino        fase_operacao  \n",
       "0      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO    APROXIMACAO FINAL  \n",
       "1      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO               SUBIDA  \n",
       "2      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO                POUSO  \n",
       "3      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO               SUBIDA  \n",
       "4      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO            DECOLAGEM  \n",
       "5      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO            DECOLAGEM  \n",
       "6      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO              MANOBRA  \n",
       "7      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO                POUSO  \n",
       "8      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO  CIRCUITO DE TRAFEGO  \n",
       "9      EXPERIMENTAL  FORA DE AERODROMO  FORA DE AERODROMO   VOO A BAIXA ALTURA  "
      ]
     },
     "execution_count": 139,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "pd.DataFrame(list(aeronave.find({\"tipo_veiculo\": {\"$nin\": tipos_excluidos}}).limit(10)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d48c9e19",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "185cbc44",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.6\"></a>\n",
    "## 6. Execute um comando aggregate() na collection aeronave para agrupar os documentos pelo campo tipo_veiculo fazendo uma contagem *($sum:1) para cada tipo_veiculo.*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 145,
   "id": "18ea1d7a",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': 'DIRIGIVEL', 'count': 2}\n",
      "{'_id': 'ANFIBIO', 'count': 12}\n",
      "{'_id': 'TRIKE', 'count': 5}\n",
      "{'_id': 'HIDROAVIAO', 'count': 1}\n",
      "{'_id': 'ULTRALEVE', 'count': 312}\n",
      "{'_id': 'PLANADOR', 'count': 15}\n",
      "{'_id': 'AVIAO', 'count': 4268}\n",
      "{'_id': '***', 'count': 81}\n",
      "{'_id': 'BALAO', 'count': 1}\n",
      "{'_id': 'HELICOPTERO', 'count': 606}\n"
     ]
    }
   ],
   "source": [
    "#Acesso a coleção\n",
    "aeronave = db[\"aeronave\"]\n",
    "\n",
    "# Definir a operação de agregação\n",
    "pipeline = [\n",
    "    {\"$group\": {\"_id\": \"$tipo_veiculo\", \"count\": {\"$sum\": 1}}}\n",
    "]\n",
    "\n",
    "# Executar a operação de agregação\n",
    "result = aeronave.aggregate(pipeline)\n",
    "\n",
    "# Exibir o resultado\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 143,
   "id": "79e4fc5f",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>count</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>DIRIGIVEL</td>\n",
       "      <td>2</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>ANFIBIO</td>\n",
       "      <td>12</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>TRIKE</td>\n",
       "      <td>5</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>HIDROAVIAO</td>\n",
       "      <td>1</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>ULTRALEVE</td>\n",
       "      <td>312</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>PLANADOR</td>\n",
       "      <td>15</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6</th>\n",
       "      <td>AVIAO</td>\n",
       "      <td>4268</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>***</td>\n",
       "      <td>81</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>8</th>\n",
       "      <td>BALAO</td>\n",
       "      <td>1</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>9</th>\n",
       "      <td>HELICOPTERO</td>\n",
       "      <td>606</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "           _id  count\n",
       "0    DIRIGIVEL      2\n",
       "1      ANFIBIO     12\n",
       "2        TRIKE      5\n",
       "3   HIDROAVIAO      1\n",
       "4    ULTRALEVE    312\n",
       "5     PLANADOR     15\n",
       "6        AVIAO   4268\n",
       "7          ***     81\n",
       "8        BALAO      1\n",
       "9  HELICOPTERO    606"
      ]
     },
     "execution_count": 143,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "pd.DataFrame(list(aeronave.aggregate(pipeline)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b98b123",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8a0b5420",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.7\"></a>\n",
    "## 7. Execute um comando find() na collection ocorrencia para buscar os documentos com o field num_recomendacoes menor ou igual ($lte) a 2 (<=2). Limite o resultado da sua consulta para 10 documentos."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 146,
   "id": "1b682dcf",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa17'), 'id_ocorrencia': 39115, 'classificacao': 'ACIDENTE', 'cidade': 'CORRENTINA', 'uf': 'BA', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 7, 17, 40), 'num_recomendacoes': 2}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa18'), 'id_ocorrencia': 39155, 'classificacao': 'INCIDENTE', 'cidade': 'BELO HORIZONTE', 'uf': 'MG', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 5, 12, 55), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa19'), 'id_ocorrencia': 39156, 'classificacao': 'INCIDENTE GRAVE', 'cidade': 'CASCAVEL', 'uf': 'PR', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 1, 10, 23, 15), 'num_recomendacoes': 2}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa1a'), 'id_ocorrencia': 39158, 'classificacao': 'INCIDENTE', 'cidade': 'BELEM', 'uf': 'PA', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 1, 28, 16, 0), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa1b'), 'id_ocorrencia': 39176, 'classificacao': 'INCIDENTE', 'cidade': 'SAO LUIS', 'uf': 'MA', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 5, 9, 30), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa1c'), 'id_ocorrencia': 39178, 'classificacao': 'INCIDENTE', 'cidade': 'CAMPINAS', 'uf': 'SP', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 8, 12, 33), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa1f'), 'id_ocorrencia': 39295, 'classificacao': 'ACIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 6, 21, 9), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa20'), 'id_ocorrencia': 39315, 'classificacao': 'ACIDENTE', 'cidade': 'CANUTAMA', 'uf': 'AM', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 1, 15, 21, 22), 'num_recomendacoes': 0}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa21'), 'id_ocorrencia': 39316, 'classificacao': 'ACIDENTE', 'cidade': 'RIO DO OESTE', 'uf': 'SC', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 4, 17, 55), 'num_recomendacoes': 2}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa22'), 'id_ocorrencia': 39317, 'classificacao': 'ACIDENTE', 'cidade': 'RIO VERDE', 'uf': 'GO', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 24, 13, 0), 'num_recomendacoes': 0}\n"
     ]
    }
   ],
   "source": [
    "#Seleciona a collection\n",
    "collection = db.ocorrencia\n",
    "\n",
    "# Executa a consulta\n",
    "result = collection.find({\"num_recomendacoes\": {\"$lte\": 2}}).limit(10)\n",
    "\n",
    "# Exibe o resultado\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 147,
   "id": "45ffbd6d",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>id_ocorrencia</th>\n",
       "      <th>classificacao</th>\n",
       "      <th>cidade</th>\n",
       "      <th>uf</th>\n",
       "      <th>pais</th>\n",
       "      <th>data</th>\n",
       "      <th>num_recomendacoes</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>63f96b1f17a43afe40cdfa17</td>\n",
       "      <td>39115</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>CORRENTINA</td>\n",
       "      <td>BA</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-07 17:40:00</td>\n",
       "      <td>2</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>63f96b1f17a43afe40cdfa18</td>\n",
       "      <td>39155</td>\n",
       "      <td>INCIDENTE</td>\n",
       "      <td>BELO HORIZONTE</td>\n",
       "      <td>MG</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-05 12:55:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>63f96b1f17a43afe40cdfa19</td>\n",
       "      <td>39156</td>\n",
       "      <td>INCIDENTE GRAVE</td>\n",
       "      <td>CASCAVEL</td>\n",
       "      <td>PR</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-01-10 23:15:00</td>\n",
       "      <td>2</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>63f96b1f17a43afe40cdfa1a</td>\n",
       "      <td>39158</td>\n",
       "      <td>INCIDENTE</td>\n",
       "      <td>BELEM</td>\n",
       "      <td>PA</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-01-28 16:00:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>63f96b1f17a43afe40cdfa1b</td>\n",
       "      <td>39176</td>\n",
       "      <td>INCIDENTE</td>\n",
       "      <td>SAO LUIS</td>\n",
       "      <td>MA</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-05 09:30:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>63f96b1f17a43afe40cdfa1c</td>\n",
       "      <td>39178</td>\n",
       "      <td>INCIDENTE</td>\n",
       "      <td>CAMPINAS</td>\n",
       "      <td>SP</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-08 12:33:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6</th>\n",
       "      <td>63f96b1f17a43afe40cdfa1f</td>\n",
       "      <td>39295</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>RIO DE JANEIRO</td>\n",
       "      <td>RJ</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-06 21:09:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>63f96b1f17a43afe40cdfa20</td>\n",
       "      <td>39315</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>CANUTAMA</td>\n",
       "      <td>AM</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-01-15 21:22:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>8</th>\n",
       "      <td>63f96b1f17a43afe40cdfa21</td>\n",
       "      <td>39316</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>RIO DO OESTE</td>\n",
       "      <td>SC</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-04 17:55:00</td>\n",
       "      <td>2</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>9</th>\n",
       "      <td>63f96b1f17a43afe40cdfa22</td>\n",
       "      <td>39317</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>RIO VERDE</td>\n",
       "      <td>GO</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-24 13:00:00</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                        _id  id_ocorrencia    classificacao          cidade  \\\n",
       "0  63f96b1f17a43afe40cdfa17          39115         ACIDENTE      CORRENTINA   \n",
       "1  63f96b1f17a43afe40cdfa18          39155        INCIDENTE  BELO HORIZONTE   \n",
       "2  63f96b1f17a43afe40cdfa19          39156  INCIDENTE GRAVE        CASCAVEL   \n",
       "3  63f96b1f17a43afe40cdfa1a          39158        INCIDENTE           BELEM   \n",
       "4  63f96b1f17a43afe40cdfa1b          39176        INCIDENTE        SAO LUIS   \n",
       "5  63f96b1f17a43afe40cdfa1c          39178        INCIDENTE        CAMPINAS   \n",
       "6  63f96b1f17a43afe40cdfa1f          39295         ACIDENTE  RIO DE JANEIRO   \n",
       "7  63f96b1f17a43afe40cdfa20          39315         ACIDENTE        CANUTAMA   \n",
       "8  63f96b1f17a43afe40cdfa21          39316         ACIDENTE    RIO DO OESTE   \n",
       "9  63f96b1f17a43afe40cdfa22          39317         ACIDENTE       RIO VERDE   \n",
       "\n",
       "   uf    pais                data  num_recomendacoes  \n",
       "0  BA  BRASIL 2010-02-07 17:40:00                  2  \n",
       "1  MG  BRASIL 2010-02-05 12:55:00                  0  \n",
       "2  PR  BRASIL 2010-01-10 23:15:00                  2  \n",
       "3  PA  BRASIL 2010-01-28 16:00:00                  0  \n",
       "4  MA  BRASIL 2010-02-05 09:30:00                  0  \n",
       "5  SP  BRASIL 2010-02-08 12:33:00                  0  \n",
       "6  RJ  BRASIL 2010-02-06 21:09:00                  0  \n",
       "7  AM  BRASIL 2010-01-15 21:22:00                  0  \n",
       "8  SC  BRASIL 2010-02-04 17:55:00                  2  \n",
       "9  GO  BRASIL 2010-02-24 13:00:00                  0  "
      ]
     },
     "execution_count": 147,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "pd.DataFrame(list(collection.find({\"num_recomendacoes\": {\"$lte\": 2}}).limit(10)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bddf6307",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2dec3c2b",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.8\"></a>\n",
    "## 8. Execute um comando aggregate() na collection ocorrencia para buscar os documentos conforme abaixo.\n",
    "\n",
    "*Field num_recomendacoes menor ou igual ($lte) a 2 (<=2).*\n",
    "\n",
    "*Agrupar pelo field uf ($uf).*\n",
    "\n",
    "*Fazer a contagem ($sum:1).*\n",
    "\n",
    "*Ordenar de forma descendente.*"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 148,
   "id": "465d6269",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': 'SP', 'count': 1208}\n",
      "{'_id': 'MG', 'count': 472}\n",
      "{'_id': 'RJ', 'count': 465}\n",
      "{'_id': 'PR', 'count': 425}\n",
      "{'_id': 'RS', 'count': 315}\n",
      "{'_id': 'GO', 'count': 272}\n",
      "{'_id': 'MT', 'count': 250}\n",
      "{'_id': 'PA', 'count': 242}\n",
      "{'_id': 'AM', 'count': 204}\n",
      "{'_id': 'BA', 'count': 182}\n",
      "{'_id': 'SC', 'count': 162}\n",
      "{'_id': 'MS', 'count': 130}\n",
      "{'_id': 'DF', 'count': 123}\n",
      "{'_id': 'PE', 'count': 88}\n",
      "{'_id': 'CE', 'count': 75}\n",
      "{'_id': 'ES', 'count': 66}\n",
      "{'_id': 'MA', 'count': 63}\n",
      "{'_id': 'AC', 'count': 50}\n",
      "{'_id': 'TO', 'count': 46}\n",
      "{'_id': 'RR', 'count': 45}\n",
      "{'_id': 'PI', 'count': 34}\n",
      "{'_id': 'RO', 'count': 27}\n",
      "{'_id': 'AL', 'count': 25}\n",
      "{'_id': 'PB', 'count': 23}\n",
      "{'_id': 'SE', 'count': 19}\n",
      "{'_id': 'RN', 'count': 13}\n",
      "{'_id': 'AP', 'count': 9}\n",
      "{'_id': '***', 'count': 2}\n"
     ]
    }
   ],
   "source": [
    "# acesso a collection\n",
    "ocorrencia = db['ocorrencia']\n",
    "\n",
    "# criar a pipeline do aggregate\n",
    "pipeline = [\n",
    "    {'$match': {'num_recomendacoes': {'$lte': 2}}},\n",
    "    {'$group': {'_id': '$uf', 'count': {'$sum': 1}}},\n",
    "    {'$sort': {'count': -1}}\n",
    "]\n",
    "\n",
    "# executar o aggregate e imprimir o resultado\n",
    "result = ocorrencia.aggregate(pipeline)\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "814f2f42",
   "metadata": {},
   "source": [
    "**Explicando o código:**\n",
    "* O comando aggregate() na coleção ocorrencia está realizando uma consulta mais complexa que envolve várias etapas. Abaixo, segue a explicação das etapas:\n",
    "\n",
    "    * Match: Na primeira etapa, a função match é utilizada para filtrar os documentos da coleção ocorrencia que possuem o campo num_recomendacoes com valor menor ou igual a 2.\n",
    "\n",
    "    * Group: Na segunda etapa, a função group é utilizada para agrupar os documentos filtrados pelo campo uf. A função sum é utilizada para contar o número de ocorrências em cada estado.\n",
    "\n",
    "    * Sort: Na terceira etapa, a função sort é utilizada para ordenar os documentos de forma descendente com base no número de ocorrências em cada estado.\n",
    "\n",
    "    * Ao final do processo, teremos uma lista com os estados ordenados de forma decrescente pelo número de ocorrências com num_recomendacoes menor ou igual a 2.\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 149,
   "id": "7eec4672",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>count</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>SP</td>\n",
       "      <td>1208</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>MG</td>\n",
       "      <td>472</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>RJ</td>\n",
       "      <td>465</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>PR</td>\n",
       "      <td>425</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>RS</td>\n",
       "      <td>315</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>5</th>\n",
       "      <td>GO</td>\n",
       "      <td>272</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>6</th>\n",
       "      <td>MT</td>\n",
       "      <td>250</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>7</th>\n",
       "      <td>PA</td>\n",
       "      <td>242</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>8</th>\n",
       "      <td>AM</td>\n",
       "      <td>204</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>9</th>\n",
       "      <td>BA</td>\n",
       "      <td>182</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>10</th>\n",
       "      <td>SC</td>\n",
       "      <td>162</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>11</th>\n",
       "      <td>MS</td>\n",
       "      <td>130</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>12</th>\n",
       "      <td>DF</td>\n",
       "      <td>123</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>13</th>\n",
       "      <td>PE</td>\n",
       "      <td>88</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>14</th>\n",
       "      <td>CE</td>\n",
       "      <td>75</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>15</th>\n",
       "      <td>ES</td>\n",
       "      <td>66</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>16</th>\n",
       "      <td>MA</td>\n",
       "      <td>63</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>17</th>\n",
       "      <td>AC</td>\n",
       "      <td>50</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>18</th>\n",
       "      <td>TO</td>\n",
       "      <td>46</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>19</th>\n",
       "      <td>RR</td>\n",
       "      <td>45</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>20</th>\n",
       "      <td>PI</td>\n",
       "      <td>34</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>21</th>\n",
       "      <td>RO</td>\n",
       "      <td>27</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>22</th>\n",
       "      <td>AL</td>\n",
       "      <td>25</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>23</th>\n",
       "      <td>PB</td>\n",
       "      <td>23</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>24</th>\n",
       "      <td>SE</td>\n",
       "      <td>19</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>25</th>\n",
       "      <td>RN</td>\n",
       "      <td>13</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>26</th>\n",
       "      <td>AP</td>\n",
       "      <td>9</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>27</th>\n",
       "      <td>***</td>\n",
       "      <td>2</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "    _id  count\n",
       "0    SP   1208\n",
       "1    MG    472\n",
       "2    RJ    465\n",
       "3    PR    425\n",
       "4    RS    315\n",
       "5    GO    272\n",
       "6    MT    250\n",
       "7    PA    242\n",
       "8    AM    204\n",
       "9    BA    182\n",
       "10   SC    162\n",
       "11   MS    130\n",
       "12   DF    123\n",
       "13   PE     88\n",
       "14   CE     75\n",
       "15   ES     66\n",
       "16   MA     63\n",
       "17   AC     50\n",
       "18   TO     46\n",
       "19   RR     45\n",
       "20   PI     34\n",
       "21   RO     27\n",
       "22   AL     25\n",
       "23   PB     23\n",
       "24   SE     19\n",
       "25   RN     13\n",
       "26   AP      9\n",
       "27  ***      2"
      ]
     },
     "execution_count": 149,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "pd.DataFrame(list(ocorrencia.aggregate(pipeline)))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "13c7ef75",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d91fabe5",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.9\"></a>\n",
    "## 9. Execute um comando aggregate() na collection ocorrencia para buscar amédia dos números de recomendações ($num_recomendacoes)."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 150,
   "id": "d926641b",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': None, 'media_recomendacoes': 0.32048836322014496}\n"
     ]
    }
   ],
   "source": [
    "pipeline = [\n",
    "    {\n",
    "        '$group': {\n",
    "            '_id': None,\n",
    "            'media_recomendacoes': {\n",
    "                '$avg': \"$num_recomendacoes\"\n",
    "            }\n",
    "        }\n",
    "    }\n",
    "]\n",
    "\n",
    "result = db.ocorrencia.aggregate(pipeline)\n",
    "\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ebfde40f",
   "metadata": {},
   "source": [
    "**Explicação do pipeline:**\n",
    "\n",
    "* group: agrupa todos os documentos da collection\n",
    "* id: None: define o campo pelo qual os documentos serão agrupados, neste caso não há agrupamento, pois queremos a média de todos os documentos da collection.\n",
    "* media_recomendacoes: novo campo criado que irá conter a média dos valores do campo num_recomendacoes.\n",
    "* avg: \"num_recomendacoes\": operador de agregação que calcula a média dos valores do campo num_recomendacoes."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cbed2bf0",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cc1ff34c",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.10\"></a>\n",
    "## 10.Execute um comando lookup aggregate() na collection aeronave fazendo uma junção com a collection ocorrencia. Limite o resultado do lookup aggregate() em dois documentos para facilitar a visão do que acontece."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3cc75111",
   "metadata": {},
   "source": [
    "**Para realizar o lookup aggregate na coleção aeronave com a coleção ocorrencia, podemos seguir os passos abaixo:**\n",
    "\n",
    "* Executar o método aggregate() na coleção aeronave e passar o estágio lookup como um dos parâmetros. O lookup tem como objetivo realizar uma junção com a coleção ocorrencia.\n",
    "\n",
    "* O estágio lookup exige que o parâmetro from seja informado, indicando a coleção com a qual será realizada a junção. Neste caso, vamos informar a coleção ocorrencia.\n",
    "\n",
    "* O estágio lookup também exige que seja informada a chave estrangeira (campo) da coleção local (coleção aeronave) e o campo correspondente da coleção externa (coleção ocorrencia), através dos parâmetros localField e foreignField, respectivamente.\n",
    "\n",
    "* Podemos selecionar os campos que desejamos retornar na consulta utilizando o estágio project.\n",
    "\n",
    "* Podemos utilizar o estágio limit para limitar a quantidade de documentos retornados pela consulta."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 179,
   "id": "fd1cec90",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-711A', 'ocorrencias': [{'_id': ObjectId('63f96b1f17a43afe40cdfa17'), 'id_ocorrencia': 39115, 'classificacao': 'ACIDENTE', 'cidade': 'CORRENTINA', 'uf': 'BA', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 7, 17, 40), 'num_recomendacoes': 2}]}\n",
      "{'fabricante': 'BEECH AIRCRAFT', 'modelo': 'C90', 'ocorrencias': [{'_id': ObjectId('63f96b1f17a43afe40cdfa18'), 'id_ocorrencia': 39155, 'classificacao': 'INCIDENTE', 'cidade': 'BELO HORIZONTE', 'uf': 'MG', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 5, 12, 55), 'num_recomendacoes': 0}]}\n"
     ]
    }
   ],
   "source": [
    "# selecionar a coleção aeronave\n",
    "aeronave = db[\"aeronave\"]\n",
    "\n",
    "# estágio $lookup\n",
    "lookup_stage = {\n",
    "    \"$lookup\": {\n",
    "        \"from\": \"ocorrencia\",\n",
    "        \"localField\": \"id_ocorrencia_a\",\n",
    "        \"foreignField\": \"id_ocorrencia\",\n",
    "        \"as\": \"ocorrencias\"\n",
    "    }\n",
    "}\n",
    "\n",
    "# estágio $project para selecionar campos específicos\n",
    "project_stage = {\n",
    "    \"$project\": {\n",
    "        \"_id\": 0,\n",
    "        \"fabricante\": 1,\n",
    "        \"modelo\": 1,\n",
    "        \"ocorrencias\": 1\n",
    "    }\n",
    "}\n",
    "\n",
    "# estágio $limit para limitar a quantidade de documentos retornados\n",
    "limit_stage = {\"$limit\": 2}\n",
    "\n",
    "# executar a consulta com os estágios definidos\n",
    "result = aeronave.aggregate([lookup_stage, project_stage, limit_stage])\n",
    "\n",
    "# exibir o resultado\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 181,
   "id": "ed2b95d4",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>fabricante</th>\n",
       "      <th>modelo</th>\n",
       "      <th>ocorrencias</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>NEIVA INDUSTRIA AERONAUTICA</td>\n",
       "      <td>EMB-711A</td>\n",
       "      <td>[{'_id': 63f96b1f17a43afe40cdfa17, 'id_ocorren...</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>BEECH AIRCRAFT</td>\n",
       "      <td>C90</td>\n",
       "      <td>[{'_id': 63f96b1f17a43afe40cdfa18, 'id_ocorren...</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                    fabricante    modelo  \\\n",
       "0  NEIVA INDUSTRIA AERONAUTICA  EMB-711A   \n",
       "1               BEECH AIRCRAFT       C90   \n",
       "\n",
       "                                         ocorrencias  \n",
       "0  [{'_id': 63f96b1f17a43afe40cdfa17, 'id_ocorren...  \n",
       "1  [{'_id': 63f96b1f17a43afe40cdfa18, 'id_ocorren...  "
      ]
     },
     "execution_count": 181,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "df = pd.DataFrame(list(aeronave.aggregate([lookup_stage, project_stage, limit_stage])))\n",
    "df"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 183,
   "id": "ac6dd983",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{0: [{'_id': ObjectId('63f96b1f17a43afe40cdfa17'),\n",
       "   'id_ocorrencia': 39115,\n",
       "   'classificacao': 'ACIDENTE',\n",
       "   'cidade': 'CORRENTINA',\n",
       "   'uf': 'BA',\n",
       "   'pais': 'BRASIL',\n",
       "   'data': datetime.datetime(2010, 2, 7, 17, 40),\n",
       "   'num_recomendacoes': 2}],\n",
       " 1: [{'_id': ObjectId('63f96b1f17a43afe40cdfa18'),\n",
       "   'id_ocorrencia': 39155,\n",
       "   'classificacao': 'INCIDENTE',\n",
       "   'cidade': 'BELO HORIZONTE',\n",
       "   'uf': 'MG',\n",
       "   'pais': 'BRASIL',\n",
       "   'data': datetime.datetime(2010, 2, 5, 12, 55),\n",
       "   'num_recomendacoes': 0}]}"
      ]
     },
     "execution_count": 183,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "df.ocorrencias.to_dict()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "517e27f8",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "687162f6",
   "metadata": {},
   "source": [
    "<a id=\"ancora2.11\"></a>\n",
    "## 11.Execute um comando lookup aggregate() na collection ocorrencia fazendo uma junção com a collection ocorrencia_tipo. Limite o resultado do lookup aggregate() em dois documentos para facilitar a visão do que acontece."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bb1b4eff",
   "metadata": {},
   "source": [
    "* **Antes de executar o comando lookup aggregate(), precisamos entender o que é uma junção ou join. Em bancos de dados relacionais, um join é uma operação que combina colunas de duas ou mais tabelas com base em uma coluna relacionada entre elas. No MongoDB, o comando lookup é o equivalente ao join em bancos de dados relacionais.**\n",
    "\n",
    "* **O comando lookup permite que você faça uma junção entre documentos de duas ou mais coleções no MongoDB. Para fazer a junção, o comando usa o valor de uma ou mais chaves em um documento de uma coleção para buscar documentos correspondentes em outra coleção.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 176,
   "id": "8c902128",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa17'), 'id_ocorrencia': 39115, 'classificacao': 'ACIDENTE', 'cidade': 'CORRENTINA', 'uf': 'BA', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 7, 17, 40), 'num_recomendacoes': 2, 'tipo_ocorrencia': [{'_id': ObjectId('63f957a817a43afe40ccef86'), 'id_ocorrencia_t': 39115, 'tipo': 'PANE SECA'}]}\n",
      "{'_id': ObjectId('63f96b1f17a43afe40cdfa18'), 'id_ocorrencia': 39155, 'classificacao': 'INCIDENTE', 'cidade': 'BELO HORIZONTE', 'uf': 'MG', 'pais': 'BRASIL', 'data': datetime.datetime(2010, 2, 5, 12, 55), 'num_recomendacoes': 0, 'tipo_ocorrencia': [{'_id': ObjectId('63f957a817a43afe40ccef87'), 'id_ocorrencia_t': 39155, 'tipo': 'VAZAMENTO DE COMBUSTIVEL'}]}\n"
     ]
    }
   ],
   "source": [
    "#Criar a pipeline de agregação para o comando lookup:\n",
    "pipeline = [\n",
    "    {\n",
    "        \"$lookup\": {\n",
    "            \"from\": \"ocorrencia_tipo\",\n",
    "            \"localField\": \"id_ocorrencia\",\n",
    "            \"foreignField\": \"id_ocorrencia_t\",\n",
    "            \"as\": \"tipo_ocorrencia\"\n",
    "        }\n",
    "    },\n",
    "    {\n",
    "        \"$limit\": 2\n",
    "    }\n",
    "]\n",
    "\n",
    "#executar o comando lookup aggregate() e exibir o resultado:\n",
    "result = db.ocorrencia.aggregate(pipeline)\n",
    "for doc in result:\n",
    "    print(doc)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 177,
   "id": "a971fd7e",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>_id</th>\n",
       "      <th>id_ocorrencia</th>\n",
       "      <th>classificacao</th>\n",
       "      <th>cidade</th>\n",
       "      <th>uf</th>\n",
       "      <th>pais</th>\n",
       "      <th>data</th>\n",
       "      <th>num_recomendacoes</th>\n",
       "      <th>tipo_ocorrencia</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>63f96b1f17a43afe40cdfa17</td>\n",
       "      <td>39115</td>\n",
       "      <td>ACIDENTE</td>\n",
       "      <td>CORRENTINA</td>\n",
       "      <td>BA</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-07 17:40:00</td>\n",
       "      <td>2</td>\n",
       "      <td>[{'_id': 63f957a817a43afe40ccef86, 'id_ocorren...</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>63f96b1f17a43afe40cdfa18</td>\n",
       "      <td>39155</td>\n",
       "      <td>INCIDENTE</td>\n",
       "      <td>BELO HORIZONTE</td>\n",
       "      <td>MG</td>\n",
       "      <td>BRASIL</td>\n",
       "      <td>2010-02-05 12:55:00</td>\n",
       "      <td>0</td>\n",
       "      <td>[{'_id': 63f957a817a43afe40ccef87, 'id_ocorren...</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                        _id  id_ocorrencia classificacao          cidade  uf  \\\n",
       "0  63f96b1f17a43afe40cdfa17          39115      ACIDENTE      CORRENTINA  BA   \n",
       "1  63f96b1f17a43afe40cdfa18          39155     INCIDENTE  BELO HORIZONTE  MG   \n",
       "\n",
       "     pais                data  num_recomendacoes  \\\n",
       "0  BRASIL 2010-02-07 17:40:00                  2   \n",
       "1  BRASIL 2010-02-05 12:55:00                  0   \n",
       "\n",
       "                                     tipo_ocorrencia  \n",
       "0  [{'_id': 63f957a817a43afe40ccef86, 'id_ocorren...  \n",
       "1  [{'_id': 63f957a817a43afe40ccef87, 'id_ocorren...  "
      ]
     },
     "execution_count": 177,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "df = pd.DataFrame(list(db.ocorrencia.aggregate(pipeline)))\n",
    "df"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 178,
   "id": "f8154981",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{0: [{'_id': ObjectId('63f957a817a43afe40ccef86'),\n",
       "   'id_ocorrencia_t': 39115,\n",
       "   'tipo': 'PANE SECA'}],\n",
       " 1: [{'_id': ObjectId('63f957a817a43afe40ccef87'),\n",
       "   'id_ocorrencia_t': 39155,\n",
       "   'tipo': 'VAZAMENTO DE COMBUSTIVEL'}]}"
      ]
     },
     "execution_count": 178,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "df.tipo_ocorrencia.to_dict()"
   ]
  },
  {
   "cell_type": "raw",
   "id": "98497665",
   "metadata": {},
   "source": [
    "Nesta jornada de aprendizado em bancos de dados NoSQL, tive a oportunidade de utilizar o MongoDB com Python e explorar dados da Força Aérea Brasileira sobre ocorrências na aviação civil brasileira. Com os arquivos Ocorrencia.csv, Ocorrencia_tipo.csv e Aeronave.csv, pude importar informações relevantes para o MongoDB e realizar análises utilizando comandos find(), aggregate() e lookup().\n",
    "\n",
    "Durante o projeto, aprendi a importância de ajustar os dados antes de importá-los para o banco de dados, como a eliminação de caracteres especiais e acentos, além de ajustes nos campos de data e hora para facilitar a importação.\n",
    "\n",
    "Utilizando Python, pude criar scripts para realizar consultas e análises no MongoDB, além de exibir resultados em estruturas de dados como listas e dataframes do pandas. Aprendi também sobre as etapas de um pipeline do aggregate() e como utilizar o comando lookup() para fazer junções entre collections.\n",
    "\n",
    "Foi uma jornada desafiadora, mas muito enriquecedora em termos de conhecimento em bancos de dados NoSQL e como utilizar o MongoDB com Python para análises de dados.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "31b3c751",
   "metadata": {},
   "source": [
    "[voltar](#ancora2)."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "67848d7d",
   "metadata": {},
   "source": [
    "# Respondendo algumas perguntas que surgiram."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c55fa731",
   "metadata": {},
   "source": [
    "**1-Qual é o tipo de ocorrência mais comum na aviação civil brasileira?**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 185,
   "id": "00440cf9",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "O tipo de ocorrência mais comum é 'FALHA DO MOTOR EM VOO' com um total de 637 ocorrências.\n"
     ]
    }
   ],
   "source": [
    "# Executar a consulta utilizando aggregate()\n",
    "ocorrencias_tipo = db.ocorrencia_tipo.aggregate([\n",
    "    {\n",
    "        '$group': {\n",
    "            '_id': '$tipo',\n",
    "            'count': {'$sum': 1}\n",
    "        }\n",
    "    },\n",
    "    {\n",
    "        '$sort': {'count': -1}\n",
    "    },\n",
    "    {\n",
    "        '$limit': 1\n",
    "    }\n",
    "])\n",
    "\n",
    "# Exibir o resultado\n",
    "for tipo in ocorrencias_tipo:\n",
    "    print(f\"O tipo de ocorrência mais comum é '{tipo['_id']}' com um total de {tipo['count']} ocorrências.\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6c5e998f",
   "metadata": {},
   "source": [
    "**2-Qual é a distribuição de ocorrências ao longo dos anos? Existe algum ano com mais ocorrências?**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 188,
   "id": "d223aa1d",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "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51wx8A6+LkNSRS219WAgw8zWAF8DXczsi8AkDk219Zl2zq333xYCr6AxDvZSS+28FV8Pgz1/nJkO9A9A3JBVm7+jzawPEOGcyw5I2BBWS+3cF8A5t9J/5nsaMCQwiUNXLf6Oftc5N8g5NxhYBiwPVObDoWL2EPm7Pz0HLHHO/a3KpneAy/z3LwPePtBx/Kf2C83saP8xLz3YcxqS2mpnObDabGcz+wOQDNxcyzFDXm21s5klVPlPKAI4A1ha+4lDVy3+jp7knGvpnGsHHIvvmqHjaz9xaKrFz3TEnlFI/V+8zgI0crRfLX6eHb7BEI/3rzoJWFyrYUNYAL5zjEZnZX+mFtt5PdDdzFL8j0/Bd02o+NXy97tU/21j4Frg2dpNe4Scc1oOYcH3pcbh69LwvX85A2iK7xrB5f7bJlWeswbYhm9EzBygu399Jr7/tFcCjwPm9fsLlqWW2/kB/+NK/+29Xr+/YFlqq53x9Sxw+P4z2XOcK7x+f8Gy1GI7pwGz/cdZBDyG76//nr/HYFlq83dHle3tgIVev7dgWmrxMx0PZFf5TD8ChHv9/oJlqc3PM9AW+NJ/rE+BNl6/v2BZavv3BrAK6Ob1+wq2pZY/z1fj+84xH98fapp6/f6Caanltn4V3x+/FgOjvH5v+y7mDykiIiIiIiISMtTNWEREREREREKOilkREREREREJOSpmRUREREREJOSomBUREREREZGQo2JWREREREREQo6KWRERkSBiZuebmTOzbl5nERERCWYqZkVERILLaOBrYJTXQURERIKZilkREZEgYWYJwDHABPzFrJkdb2ZfmNkMM1tqZi+bmfm3nWRmc81sgZk9b2bRHsYXERGpUypmRUREgsd5wAfOuR+AbWbW37++H3Az0B3oABxjZjHAFOAi51wvIAK4pq4Di4iIeEXFrIiISPAYDbzmv/+a/zHALOdcjnOuEvgeaAd0BVb7C1+AqcDQuosqIiLirQivA4iIiAiYWVPgRKCnmTkgHHDA+0BJlV0r8P3/bXUeUkREJIjozKyIiEhwGA684Jxr65xr55xrDawGjt3P/kuBdmbWyf94LPCfOsgpIiISFFTMioiIBIfRwFv7rHsDuLi6nZ1zxcB4YLqZLQAqgScDmlBERCSImHPO6wwiIiIiIiIih0RnZkVERERERCTkqJgVERERERGRkKNiVkREREREREKOilkREREREREJOSpmRUREREREJOSomBUREREREZGQo2JWREREREREQo6KWREREREREQk5/w+i5EgZfpXCAwAAAABJRU5ErkJggg==\n",
      "text/plain": [
       "<Figure size 1152x432 with 1 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "import matplotlib.pyplot as plt\n",
    "\n",
    "ocorrencia = db['ocorrencia']\n",
    "\n",
    "# Agrupando as ocorrências por ano\n",
    "pipeline = [\n",
    "    {\"$group\": {\n",
    "        \"_id\": {\n",
    "            \"ano\": {\"$year\": \"$data\"}            \n",
    "        },\n",
    "        \"total\": {\"$sum\": 1}\n",
    "    }},\n",
    "    {\"$sort\": {\"_id\": 1}}\n",
    "]\n",
    "result = ocorrencia.aggregate(pipeline)\n",
    "\n",
    "# Plotando o gráfico de distribuição\n",
    "anos = []\n",
    "ocorrencias = []\n",
    "for r in result:\n",
    "    ano = str(r['_id']['ano'])\n",
    "    total = r['total']\n",
    "    anos.append(ano)\n",
    "    ocorrencias.append(total)\n",
    "\n",
    "plt.figure(figsize=(16,6))\n",
    "plt.plot(anos, ocorrencias)\n",
    "plt.xlabel('Ano')\n",
    "plt.ylabel('Ocorrências')\n",
    "plt.title('Distribuição de ocorrências ao longo dos anos')\n",
    "plt.show()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "169625a9",
   "metadata": {},
   "source": [
    "**3-Quais são as aeronaves mais envolvidas em ocorrências? Existe algum modelo de aeronave com maior incidência de ocorrências?**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 225,
   "id": "c7c2910d",
   "metadata": {},
   "outputs": [
    {
     "data": {
      "image/png": "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\n",
      "text/plain": [
       "<Figure size 432x288 with 1 Axes>"
      ]
     },
     "metadata": {
      "needs_background": "light"
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "aeronave_col = db['aeronave']\n",
    "\n",
    "# Agregação para contar as ocorrências por fabricante de aeronave\n",
    "pipeline = [\n",
    "    {\"$group\": {\"_id\": \"$modelo\", \"count\": {\"$sum\": 1}}},\n",
    "    {\"$sort\": {\"count\": -1}},\n",
    "    {\"$limit\": 5}\n",
    "]\n",
    "result = list(aeronave_col.aggregate(pipeline))\n",
    "\n",
    "# Lista com os modelos de aeronaves e número de ocorrências\n",
    "labels = [doc['_id'] for doc in result]\n",
    "values = [doc['count'] for doc in result]\n",
    "\n",
    "# Plotando o gráfico de barras\n",
    "plt.barh(labels, values)\n",
    "plt.title(\"Top 5 modelos de aeronaves envolvidas em ocorrências\")\n",
    "plt.xlabel(\"Número de ocorrências\")\n",
    "plt.ylabel(\"Modelo\")\n",
    "plt.show()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3606cc81",
   "metadata": {},
   "source": [
    "**4-Qual é a proporção de ocorrências com classificação: 'Incidente grave'em relação ao total de ocorrências?**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 399,
   "id": "fdcc2bcb",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "A proporção de ocorrências graves é de 12.59%.\n"
     ]
    }
   ],
   "source": [
    "# contagem total de ocorrências\n",
    "total_ocorrencias = db.ocorrencia.count_documents({})\n",
    "\n",
    "# contagem de ocorrências com classificação igual a 'INCIDENTE GRAVE'\n",
    "ocorrencias_graves = db.ocorrencia.count_documents({'classificacao': 'INCIDENTE GRAVE'})\n",
    "\n",
    "# proporção de ocorrências graves em relação ao total de ocorrências\n",
    "proporcao = ocorrencias_graves / total_ocorrencias\n",
    "\n",
    "print(f\"A proporção de ocorrências graves é de {round(proporcao*100, 2)}%.\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7d5ab909",
   "metadata": {},
   "source": [
    "**5-Verifique se todas as aeronaves possuem correspondência com a collection ocorrencia, pois existem mais documentos em aeronave do que em ocorrencia.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 229,
   "id": "bd03f876",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Todas as aeronaves possuem correspondência na collection ocorrencia.\n"
     ]
    }
   ],
   "source": [
    "# verificando se existem aeronaves sem correspondência na collection ocorrencia\n",
    "pipeline = [\n",
    "    {\n",
    "        \"$lookup\": {\n",
    "            \"from\": \"ocorrencia\",\n",
    "            \"localField\": \"id_ocorrencia_a\",\n",
    "            \"foreignField\": \"id_ocorrencia\",\n",
    "            \"as\": \"ocorrencia\"\n",
    "        }\n",
    "    },\n",
    "    {\n",
    "        \"$match\": {\n",
    "            \"ocorrencia\": {\"$size\": 0}\n",
    "        }\n",
    "    }\n",
    "]\n",
    "\n",
    "result = list(db.aeronave.aggregate(pipeline))\n",
    "\n",
    "if len(result) > 0:\n",
    "    print(\"Existem aeronaves sem correspondência na collection ocorrencia:\")\n",
    "    for doc in result:\n",
    "        print(doc)\n",
    "else:\n",
    "    print(\"Todas as aeronaves possuem correspondência na collection ocorrencia.\")\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94e4b170",
   "metadata": {},
   "source": [
    "* **Bom já que todas as aeronaves possuem ocorrencias, possívelmente temos aeronaves com mais de 1 ocorrência, armazene o id_ocorrencia_a dessas aeronaves em uma lista**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 324,
   "id": "52fca3b8",
   "metadata": {},
   "outputs": [],
   "source": [
    "# Fazer a agregação\n",
    "pipeline = [\n",
    "    {\n",
    "        '$group': {\n",
    "            '_id':'$id_ocorrencia_a',\n",
    "            'count': {'$sum': 1}\n",
    "        }\n",
    "    },\n",
    "    \n",
    "    {\n",
    "        '$match': {\n",
    "            'count': {'$gt': 1}\n",
    "        }\n",
    "    },\n",
    "    {\n",
    "        '$sort': {\n",
    "            'count': -1\n",
    "        }\n",
    "    }\n",
    "]\n",
    "\n",
    "result = db.aeronave.aggregate(pipeline)\n",
    "\n",
    "# Imprimir os resultados\n",
    "lista_aeronave_com_ocorr_rep = []\n",
    "for doc in result:\n",
    "    lista_aeronave_com_ocorr_rep.append(doc['_id']) # armazena os ids repetidos\n",
    "    #print(doc['_id'], doc['count']) #imprime o id e a quantidade de repetições\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fbe3f39c",
   "metadata": {},
   "source": [
    "* **Use a lista para filtrar as 3 collections, assim podemos saber quais as aeronaves, tipos e ocorrencia correspondentes**."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 395,
   "id": "e94cc466",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "ocorrencia: {'id_ocorrencia': 41609, 'classificação': 'INCIDENTE', 'cidade': 'ARACAJU', 'uf': 'SE'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-85F'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 41609, 'classificação': 'INCIDENTE', 'cidade': 'ARACAJU', 'uf': 'SE'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A319-132'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 43869, 'classificação': 'ACIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'FABRICACAO PROPRIA', 'modelo': 'FOX V5 SUPER'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 43869, 'classificação': 'ACIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'FOX II'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 44944, 'classificação': 'ACIDENTE', 'cidade': 'CORUMBA', 'uf': 'MS'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': 'N-592-420'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 44944, 'classificação': 'ACIDENTE', 'cidade': 'CORUMBA', 'uf': 'MS'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': 'U206G'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45222, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CARUARU', 'uf': 'PE'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CIA AERONAUTICA PAULISTA', 'modelo': 'CAP-4'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45222, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CARUARU', 'uf': 'PE'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '550'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45230, 'classificação': 'INCIDENTE', 'cidade': 'MACAE', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45230, 'classificação': 'INCIDENTE', 'cidade': 'MACAE', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45689, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-500'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45689, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CIRRUS DESIGN', 'modelo': 'SR22'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45689, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BEECH AIRCRAFT', 'modelo': 'C90A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45903, 'classificação': 'INCIDENTE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '150L'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 45903, 'classificação': 'INCIDENTE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-810C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 46255, 'classificação': 'ACIDENTE', 'cidade': \"SANTA BARBARA D'OESTE\", 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-711C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 46255, 'classificação': 'ACIDENTE', 'cidade': \"SANTA BARBARA D'OESTE\", 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-711C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 47245, 'classificação': 'INCIDENTE', 'cidade': 'AMERICANA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CIRRUS DESIGN', 'modelo': 'SR22'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 47245, 'classificação': 'INCIDENTE', 'cidade': 'AMERICANA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BEECH AIRCRAFT', 'modelo': '58'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49171, 'classificação': 'INCIDENTE', 'cidade': 'RECIFE', 'uf': 'PE'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'EUROCOPTER FRANCE', 'modelo': 'AS 355 N'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49171, 'classificação': 'INCIDENTE', 'cidade': 'RECIFE', 'uf': 'PE'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'BELL HELICOPTER', 'modelo': '407'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49525, 'classificação': 'INCIDENTE', 'cidade': 'JUNDIAI', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM OBSTACULOS NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '208B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49525, 'classificação': 'INCIDENTE', 'cidade': 'JUNDIAI', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM OBSTACULOS NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'RAYTHEON AIRCRAFT', 'modelo': 'A36'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49534, 'classificação': 'INCIDENTE', 'cidade': 'NOVO HAMBURGO', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'DIAMOND AIRCRAFT', 'modelo': 'DA20-C1'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 49534, 'classificação': 'INCIDENTE', 'cidade': 'NOVO HAMBURGO', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '180D'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 50384, 'classificação': 'INCIDENTE', 'cidade': 'CAMPINAS', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 50384, 'classificação': 'INCIDENTE', 'cidade': 'CAMPINAS', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'ERJ 190-200 IGW'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 50801, 'classificação': 'ACIDENTE', 'cidade': 'SOROCABA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'ROBINSON HELICOPTER', 'modelo': 'R44'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 50801, 'classificação': 'ACIDENTE', 'cidade': 'SOROCABA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '208B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51080, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51080, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-92A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51433, 'classificação': 'ACIDENTE', 'cidade': 'AMERICANA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': 'PITTSS15 AVIAO'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51433, 'classificação': 'ACIDENTE', 'cidade': 'AMERICANA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': 'S2A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51436, 'classificação': 'ACIDENTE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'FLYER INDUSTRIA AERONAUTICA LTDA', 'modelo': 'RANS S6ESCOIOTE'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51436, 'classificação': 'ACIDENTE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'ROBSON DIAS LIMA', 'modelo': 'EXCEL CARGO'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51456, 'classificação': 'INCIDENTE', 'cidade': 'FOZ DO IGUACU', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51456, 'classificação': 'INCIDENTE', 'cidade': 'FOZ DO IGUACU', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A320-232'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51653, 'classificação': 'ACIDENTE', 'cidade': 'CRUZ ALTA', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'PERDA DE CONTROLE EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-180'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51653, 'classificação': 'ACIDENTE', 'cidade': 'CRUZ ALTA', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'PERDA DE CONTROLE EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'PLANADOR', 'fabricante': 'INDUSTRIA PARANAENSE DE ESTRUTURAS', 'modelo': 'KW1'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51781, 'classificação': 'INCIDENTE', 'cidade': 'PATOS DE MINAS', 'uf': 'MG'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '525B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51781, 'classificação': 'INCIDENTE', 'cidade': 'PATOS DE MINAS', 'uf': 'MG'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-711T'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51807, 'classificação': 'INCIDENTE', 'cidade': 'SOROCABA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'GULFSTREAM AEROSPACE', 'modelo': 'G-IV'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51807, 'classificação': 'INCIDENTE', 'cidade': 'SOROCABA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-120RT'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51864, 'classificação': 'INCIDENTE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'ERJ 190-200 IGW'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51864, 'classificação': 'INCIDENTE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-810D'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51883, 'classificação': 'INCIDENTE', 'cidade': 'NAVEGANTES', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'PIPER AIRCRAFT', 'modelo': 'PA-46-500TP'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 51883, 'classificação': 'INCIDENTE', 'cidade': 'NAVEGANTES', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'PIPER AIRCRAFT', 'modelo': 'PA-34-220T'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52288, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SAO JOAO DA BOA VISTA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': '56-B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52288, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SAO JOAO DA BOA VISTA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CIA AERONAUTICA PAULISTA', 'modelo': 'CAP-4'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52343, 'classificação': 'INCIDENTE', 'cidade': 'LONDRINA', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '500'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52343, 'classificação': 'INCIDENTE', 'cidade': 'LONDRINA', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '172S'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52345, 'classificação': 'INCIDENTE', 'cidade': 'SANTA CRUZ DO SUL', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-115'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52345, 'classificação': 'INCIDENTE', 'cidade': 'SANTA CRUZ DO SUL', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '402B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52539, 'classificação': 'INCIDENTE', 'cidade': 'RIO CLARO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'DIRIGIVEL', 'fabricante': 'MAULE AIRCRAFT', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52539, 'classificação': 'INCIDENTE', 'cidade': 'RIO CLARO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'DIRIGIVEL', 'fabricante': 'MAULE AIRCRAFT', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52614, 'classificação': 'INCIDENTE', 'cidade': 'UBERABA', 'uf': 'MG'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52614, 'classificação': 'INCIDENTE', 'cidade': 'UBERABA', 'uf': 'MG'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BEECH AIRCRAFT', 'modelo': 'A36'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52992, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SALVADOR', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 52992, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SALVADOR', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-110P1'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 53104, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM OBSTACULOS NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '777-21H(LR)'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 53104, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM OBSTACULOS NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-8EH'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60726, 'classificação': 'INCIDENTE', 'cidade': 'GUARATUBA', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CIRRUS DESIGN', 'modelo': 'SR20'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60726, 'classificação': 'INCIDENTE', 'cidade': 'GUARATUBA', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '152'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60846, 'classificação': 'INCIDENTE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-8EH'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60846, 'classificação': 'INCIDENTE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A320-214'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60947, 'classificação': 'ACIDENTE', 'cidade': 'LUIZ ALVES', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'PIPER AIRCRAFT', 'modelo': 'PA-25-235'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60947, 'classificação': 'ACIDENTE', 'cidade': 'LUIZ ALVES', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'LAVIASA', 'modelo': 'PA-25-260'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60996, 'classificação': 'INCIDENTE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-8EH'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 60996, 'classificação': 'INCIDENTE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BEECH AIRCRAFT', 'modelo': 'C90A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 61014, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'AMAJARI', 'uf': 'RR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '777-223ER'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 61014, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'AMAJARI', 'uf': 'RR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': 'B787-9 DREAMLINER'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65420, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A319-132'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65420, 'classificação': 'INCIDENTE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A319-115'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65445, 'classificação': 'ACIDENTE', 'cidade': 'SANTAREM', 'uf': 'PA'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': 'T210N'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65445, 'classificação': 'ACIDENTE', 'cidade': 'SANTAREM', 'uf': 'PA'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'NEIVA INDUSTRIA AERONAUTICA', 'modelo': 'EMB-720C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65736, 'classificação': 'INCIDENTE', 'cidade': 'ANAPOLIS', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'SOPRO DE ROTOR'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'HELIBRAS', 'modelo': 'AS 350 B2'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65736, 'classificação': 'INCIDENTE', 'cidade': 'ANAPOLIS', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'SOPRO DE ROTOR'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': 'FABRICACAO PROPRIA', 'modelo': 'EXPERIMENTAL'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65921, 'classificação': 'ACIDENTE', 'cidade': 'BLUMENAU', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-115'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65921, 'classificação': 'ACIDENTE', 'cidade': 'BLUMENAU', 'uf': 'SC'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'AB-2'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65963, 'classificação': 'INCIDENTE', 'cidade': 'SALVADOR', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-867'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 65963, 'classificação': 'INCIDENTE', 'cidade': 'SALVADOR', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AIRBUS INDUSTRIE', 'modelo': 'A320-214'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 66445, 'classificação': 'INCIDENTE', 'cidade': 'ARARAQUARA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '152'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 66445, 'classificação': 'INCIDENTE', 'cidade': 'ARARAQUARA', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-505'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 66991, 'classificação': 'INCIDENTE', 'cidade': 'LUZIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '210L'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 66991, 'classificação': 'INCIDENTE', 'cidade': 'LUZIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'CARCARA I'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77281, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': '***', 'fabricante': '***', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77281, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'TEXTRON AVIATION', 'modelo': 'B200GT'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77498, 'classificação': 'INCIDENTE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'AGUSTA', 'modelo': 'AW109SP'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77498, 'classificação': 'INCIDENTE', 'cidade': 'SAO PAULO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO COM AERONAVE NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'AGUSTA', 'modelo': 'A109E'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77781, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'ROBINSON HELICOPTER', 'modelo': 'R66'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77781, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'RIO DE JANEIRO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'ULTRALEVE', 'fabricante': '***', 'modelo': 'P92-S ECHO'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77803, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'C95M'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77803, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'BRASILIA', 'uf': 'DF'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'BOEING COMPANY', 'modelo': '737-8EH'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77832, 'classificação': 'INCIDENTE', 'cidade': 'VITORIA', 'uf': 'ES'}\n",
      "dados_tipo: {'tipo': 'SOPRO DE REATOR'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '560XL'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77832, 'classificação': 'INCIDENTE', 'cidade': 'VITORIA', 'uf': 'ES'}\n",
      "dados_tipo: {'tipo': 'SOPRO DE REATOR'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77859, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'OUTROS'}\n",
      "dados_aeronave: {'tipo_veiculo': '***', 'fabricante': 'FABRICANTE DESCONHECIDO', 'modelo': 'MODELO DESCONHECIDO'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 77859, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'OUTROS'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': 'ZODIAC CH-640'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78031, 'classificação': 'ACIDENTE', 'cidade': 'ITAPOLIS', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '152'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78031, 'classificação': 'ACIDENTE', 'cidade': 'ITAPOLIS', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '150M'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78035, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'BELL HELICOPTER', 'modelo': '429'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78035, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '208B'}\n",
      "----------------------------------------------------------------------------------------------------\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "ocorrencia: {'id_ocorrencia': 78071, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CAMPO GRANDE', 'uf': 'MS'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'A29B'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78071, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CAMPO GRANDE', 'uf': 'MS'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'EMBRAER', 'modelo': 'EMB-810D'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78102, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'OSORIO', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'OPERACAO A BAIXA ALTITUDE'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-180'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78102, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'OSORIO', 'uf': 'RS'}\n",
      "dados_tipo: {'tipo': 'OPERACAO A BAIXA ALTITUDE'}\n",
      "dados_aeronave: {'tipo_veiculo': 'PLANADOR', 'fabricante': 'LET AIRCRAFT INDUSTRIES', 'modelo': 'L23'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78249, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'BEBEDOURO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-180'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78249, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'BEBEDOURO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AERO BOERO', 'modelo': 'AB-180'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78249, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'BEBEDOURO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'COLISAO DE AERONAVES EM VOO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'PLANADOR', 'fabricante': '***', 'modelo': 'SZD 51 1'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78306, 'classificação': 'INCIDENTE', 'cidade': 'JUNDIAI', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'OPERACOES NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '152'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78306, 'classificação': 'INCIDENTE', 'cidade': 'JUNDIAI', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'OPERACOES NO SOLO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'DASSAULT AVIATION', 'modelo': 'FALCON 7X'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78591, 'classificação': 'INCIDENTE', 'cidade': 'BARREIRAS', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78591, 'classificação': 'INCIDENTE', 'cidade': 'BARREIRAS', 'uf': 'BA'}\n",
      "dados_tipo: {'tipo': 'INCURSAO EM PISTA'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'PIPER AIRCRAFT', 'modelo': 'PA-32R-301'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78799, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CABO FRIO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 78799, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'CABO FRIO', 'uf': 'RJ'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'SIKORSKY AIRCRAFT', 'modelo': 'S-76C'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79066, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'ROBINSON HELICOPTER', 'modelo': 'R44 II'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79066, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'GOIANIA', 'uf': 'GO'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'CESSNA AIRCRAFT', 'modelo': '206H'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79067, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'RIBEIRAO PRETO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': 'AEROSPATIALE AND ALENIA', 'modelo': 'ATR-72-212A'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79067, 'classificação': 'INCIDENTE GRAVE', 'cidade': 'RIBEIRAO PRETO', 'uf': 'SP'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'HELICOPTERO', 'fabricante': 'EUROCOPTER FRANCE', 'modelo': 'AS 350 B2'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79089, 'classificação': 'INCIDENTE', 'cidade': 'FOZ DO IGUACU', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n",
      "ocorrencia: {'id_ocorrencia': 79089, 'classificação': 'INCIDENTE', 'cidade': 'FOZ DO IGUACU', 'uf': 'PR'}\n",
      "dados_tipo: {'tipo': 'TRAFEGO AEREO'}\n",
      "dados_aeronave: {'tipo_veiculo': 'AVIAO', 'fabricante': '***', 'modelo': '***'}\n",
      "----------------------------------------------------------------------------------------------------\n"
     ]
    }
   ],
   "source": [
    "# Ids das ocorrências a serem filtradas\n",
    "ids_ocorrencia = lista_aeronave_com_ocorr_rep\n",
    "\n",
    "# Operação de agregação\n",
    "pipeline = [\n",
    "    # Filtro pelas ocorrências desejadas\n",
    "    { '$match': { 'id_ocorrencia': { '$in': ids_ocorrencia } } },\n",
    "    # Junção com a collection ocorrencia_tipo\n",
    "    { '$lookup': {\n",
    "        'from': 'ocorrencia_tipo',\n",
    "        'localField': 'id_ocorrencia',\n",
    "        'foreignField': 'id_ocorrencia_t',\n",
    "        'as': 'tipo_ocorrencia'\n",
    "    } },\n",
    "    # Unwind para separar os documentos dos tipos de ocorrência\n",
    "    { '$unwind': '$tipo_ocorrencia' },\n",
    "    # Junção com a collection aeronave\n",
    "    { '$lookup': {\n",
    "        'from': 'aeronave',\n",
    "        'localField': 'id_ocorrencia',\n",
    "        'foreignField': 'id_ocorrencia_a',\n",
    "        'as': 'aeronave'\n",
    "    } },\n",
    "    # Unwind para separar os documentos das aeronaves\n",
    "    { '$unwind': '$aeronave' },\n",
    "    # Seleção dos campos desejados\n",
    "    { '$project': {\n",
    "        '_id': 0,\n",
    "        'id_ocorrencia': 1,\n",
    "        'classificacao': 1,\n",
    "        'cidade': 1,\n",
    "        'uf': 1,\n",
    "        'tipo_ocorrencia.tipo': 1,\n",
    "        'aeronave.tipo_veiculo': 1,\n",
    "        'aeronave.fabricante': 1,\n",
    "        'aeronave.modelo': 1\n",
    "    } }\n",
    "]\n",
    "\n",
    "result = db.ocorrencia.aggregate(pipeline)\n",
    "\n",
    "# iteração pelo resultado e impressão dos documentos\n",
    "for doc in result:\n",
    "    print('ocorrencia:',{'id_ocorrencia':doc['id_ocorrencia'],'classificação':doc['classificacao'],'cidade':doc['cidade'],'uf':doc['uf']})\n",
    "    print('dados_tipo:', doc['tipo_ocorrencia'])\n",
    "    print('dados_aeronave:', doc['aeronave'])\n",
    "    print('-'*100)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d91fe710",
   "metadata": {},
   "source": [
    "**Muito interessante!**\n",
    "* **Com essa informações conseguimos facilmente identificar acidentes envolvendo duas aeronaves com a mesma id_ocorrencia, o que confirma o motivo de existirem mais documentos em aeronaves do que em ocorrencias**.\n",
    "* **Em alguns casos onde encontramos 3 eventos com a mesma ocorrencia como no caso do id 78249 além de 2 aeronaves o incidente envolve também um 'Planador', ou até mesmo 3 aeronaves como o caso do id 45689 motivo trafego aéreo.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b4c8c82e",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.12"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
