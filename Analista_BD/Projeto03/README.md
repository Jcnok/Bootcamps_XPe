# Bootcamp: Analista de Banco de Dados  - Trabalho Prático do Módulo 03

<img src="./xpe.png" align='left' alt="drawing" width="150" heigth="150"/>

<img src="./mongobd.png" align='center' alt="drawing" width="800" heigth="800"/>

# Objetivos de Ensino


### Exercitar os conceitos vistos em aulas em relação ao banco de dados NoSQL
 * **MongoDB.**
 * **Importar algumas informações no MongoDB para executar análises.**

# Enunciado


 * **Vamos utilizar um arquivo de entrada para ser carregado no MongoDB. Esse
arquivo tem informações de livros diversos. O objetivo é carregar esse arquivo e
exercitar alguns comandos no MongoDB.**

# Objetivos

* **Basicamente, vamos carregar o conteúdo de um arquivo json em uma collection e,
após isso, iremos praticar alguns comandos no MongoDB.**

# Atividades

* **O primeiro passo é baixar o arquivo “books.json” do link: inserir o link**
* **Você precisará criar um database chamado “aula”.**
* **Você precisará criar uma collection chamada “livros”.**
* **Vamos carregar o arquivo books.json na collection “livros”.**
* **Você pode fazer essa carga pelo MongoDBCompass ou pelo prompt de comando do MongoDB.**

# Resolução das atividades:

* **Necessário possuir o mongodb instalado**
* **Necessário possuir o mongosh instalado**
* **Necessário possuir o mongodb tools instalado**
* **[link para instalação](https://www.mongodb.com/try/download/tools)**
* **obs**: Caso desejado, instale o MongoDBCompass conforme o enunciado, nesse exemplo estarei utilizando o mongo-express via docker.

## Criando o database 'aulas' e a collection livros pelo mongo-express

* *Criando o database 'aulas'*.

<img src="./db_aulas.png" align='center' alt="drawing" width="800" heigth="800"/>

* *Criando a collection 'livros'.*

<img src="./colect_livros.png" align='center' alt="drawing" width="800" heigth="800"/>

## Carregando o arquivo books.json na collection livros do db aulas.

* **Para o load do arquivo é necessário abrir o mongo.sh via prompt de comando no modo administrativo**.
* **O arquivo deve ser aberto no diretório onde ele foi descompactado, no prompt digite mongo e o shell será iniciado**.

<img src="./mongo_sh.png" align='center' alt="drawing" width="1000" heigth="800"/>

* **Será necessário manter essa janela aberta**.
* **Agora basta abrir um novo prompt em modo administrador com o caminho da pasta bin onde descompactou o arquivo mongoDB Tools.**
* **Digite o comando conforme o seu db, collection e local do aquivo:** *mongoimport --db=<database> --collection=<collection> --file=<path/to/file.json>*


<img src="./load_books.png" align='center' alt="drawing" width="1000" heigth="800"/>

* **Foram carregados 431 documentos sem nenhum erro.**
* **O Carregamento poderia ser realizado via script python com pymongo, porém por questão de problemas com a formatação do arquivo, acabei optando pelo 'mongoimport'. Segue um exemplo de código python abaixo:**


```python
'''
import pymongo
import json

# cria a conexão com o MongoDB
client = pymongo.MongoClient("mongodb://localhost:27017/")

# cria o database "aula"
db = client["aulas"]

# cria a collection "livros" dentro do database "aula"
collection = db["livros"]

# abre o arquivo "books.json"
with open("./books.json", "r") as f:
    # carrega o conteúdo do arquivo em uma lista de dicionários
    data = json.load(f)

# insere os documentos na collection "livros"
collection.insert_many(data)

print("Carga concluída!")
'''
```

### Realizando as consultas conforme o enunciado:

* **Primeiro irei realizar a conexão com o mongo de usando a biblioteca pymongo**
* **Caso não possua, será necessário realizar a instalação usando o comando:** *!pip install pymongo*



```python
# importando a lib para conexão
import pymongo

# importando a lib json para lidar com o formato de arquivo.
import json

# Realizando a conexão com o servidor local do MongoDB
client = pymongo.MongoClient("mongodb://localhost:27017/")
```

* **1) Acesso ao database aulas:** *similar ao comando: **use aulas** do mongo shell*


```python
# acesso ao db aulas
db = client["aulas"]
print(db)
```

    Database(MongoClient(host=['localhost:27017'], document_class=dict, tz_aware=False, connect=True), 'aulas')
    

* **2) Checagem se há collections no database aula:**


```python
# exibe as collections do db aulas criado
print(db.list_collection_names())
```

    ['delete_me', 'livros']
    

* **obs: por padrão o mongo-express criar uma collection 'delete_me'**


```python
# conexão com a collection livros
colect = db['livros']
print(colect)
```

    Collection(Database(MongoClient(host=['localhost:27017'], document_class=dict, tz_aware=False, connect=True), 'aulas'), 'livros')
    

* **3) Checagem se a collections livros foi carregada:**.


```python
#3 Checagem se a collections livros foi carregada:
num_docs = colect.count_documents({}) #similar ao comando dp.livros.find().count() do mongosh.

print("Número de documentos na coleção 'livros':", num_docs)
```

    Número de documentos na coleção 'livros': 431
    

* **4 - Você precisa consultar os livros com a tag isbn menor ou igual a “1000000000”.
Repare que essa tag tem um conteúdo string e não numérico. O comando abaixo
vai retornar a lista de livros. Para facilitar você pode usar .pretty(). Para facilitar
mais ainda você pode usar .count()**


```python
# Consultar os livros com o "isbn" menor ou igual a "1000000000"
resultado = colect.find({ "isbn": { "$lte": "1000000000" } })
total = 0
# Exibir a lista de livros encontrados.
for livro in resultado:
    print(livro)  
    total = total + 1

# Contar o número de livros encontrados
print("="*50)
print("Total de livros: ", total)
print("="*50)

```

    {'_id': 211, 'title': 'Comprehensive Networking Glossary and Acronym Guide', 'isbn': '013319955X', 'pageCount': 208, 'publishedDate': datetime.datetime(1995, 1, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/malkin.jpg', 'shortDescription': 'This glossary offers a complete collection of technical terms and acronyms used in the networking industry.', 'longDescription': 'This glossary offers a complete collection of technical terms and acronyms used in the networking industry. It covers general networking terminology, the specific terminology used in the Internet, and terms and acronyms specific to AppleTalk, IP, IPX, SNA, and OSI. It also covers national and international networking organizations and several major networks.    Organized in case-insensitive, alphabetic order, entries present well written definitions, understandable to novice readers and useful to experts. The glossary and the glossary entries are:    verified  cross-referenced  comprehensive  concise  understandable  For extra guidance, the book ends with three appendices, each listing the entries in one of three subject areas: networks and organizations, security, and applications and protocols.  The Comprehensive Networking Glossary and Acronym Guide is a valuable, single-source reference for the practical terminology of networking as well as a guide to networks and networking organizations.', 'status': 'PUBLISH', 'authors': ['Gary Scott Malkin'], 'categories': ['Internet']}
    {'_id': 274, 'title': 'Personal Videoconferencing', 'isbn': '013268327X', 'pageCount': 420, 'publishedDate': datetime.datetime(1996, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/rosen.jpg', 'shortDescription': '"Personal Videoconferencing is having an enormous impact on business. Evan Rosen has quantified that impact with examples of real world implementations and provided a primer on how businesses can achieve this competitive advantage for themselves."  --Frank Gill, Executive Vice President, Internet and Communications Group, Intel    "The book is very good: it is clear and the examples of user applications are excellent"  --Ralph Ungermann, CEO, First Virtual Corporation ', 'longDescription': 'The first book on the most powerful communication tool since the development of the personal computer, Personal Videoconferencing will help you streamline your business and gain a competitive edge. It summarizes the experience of more than seventy companies in many industries in the use of desktop and laptop videoconferencing to collaborate on documents and applications while communicating through video, face-to-face. Anyone who shares information with others will benefit from reading this book.  ', 'status': 'PUBLISH', 'authors': ['Evan Rosen'], 'categories': ['Networking']}
    {'_id': 519, 'title': 'Multimedia Computing', 'isbn': '020152029X', 'pageCount': 0, 'publishedDate': datetime.datetime(1993, 9, 1, 7, 0), 'status': 'PUBLISH', 'authors': ['Matthew E. Hodges'], 'categories': []}
    {'_id': 530, 'title': 'Implementing SAP R/3, Second Edition', 'isbn': '013889213X', 'pageCount': 0, 'publishedDate': datetime.datetime(1997, 9, 1, 7, 0), 'status': 'PUBLISH', 'authors': [], 'categories': []}
    ==================================================
    Total de livros:  4
    ==================================================
    

* **5) Agora vamos consultar os livros com a tag isbn menor ou igual a "1617200000".**


```python
# 5) Agora vamos consultar os livros com a tag isbn menor ou igual a "1617200000".

filtro = {"isbn": {"$lte": "1617200000"}} # condição query
resultado = db.livros.find(filtro)
total = 0 
# Exibir a lista de livros encontrados.
for livro in resultado:
    print(livro)  
    total = total + 1
    
# Contar o número de livros encontrados
print("="*50)
print("Total de livros: ", total)
print("="*50)
```

    {'_id': 27, 'title': 'Designing Hard Software', 'isbn': '133046192', 'pageCount': 350, 'publishedDate': datetime.datetime(1997, 2, 1, 8, 0), 'shortDescription': '"This book is well written ... The author does not fear to be controversial. In doing so, he writes a coherent book." --Dr. Frank J. van der Linden, Phillips Research Laboratories', 'longDescription': 'Have you ever heard, "I can\'t define a good design but I know one when I see it"  Designing Hard Software discusses ways to develop software system designs that have the same tangibility and visibility as designs for hard objects like buildings or computer hardware. It emphasizes steps called "essential tasks" which result in software specifications that show how each requirement, including robustness and extensibility, will be satisfied. All software developers and managers seeking to develop "hard" software will benefit from these ideas.    There are six essential tasks necessary for a good design:    User (run-time) requirements  Development sponsor (build-time) requirements  Domain information  Behavior identification and allocation  Behavior description  Software system architecture  Designing Hard Software goes beyond the standard software development methodologies such as those by Booch, Rumbaugh, Yourdon, and others, by providing techniques for a complete system architecture as well as explicit measures of the goodness of design. So, "you define a good design."', 'status': 'PUBLISH', 'authors': ['Douglas W. Bennett'], 'categories': ['Object-Oriented Programming', 'S']}
    {'_id': 39, 'title': 'Graphics File Formats', 'isbn': '133034054', 'pageCount': 484, 'publishedDate': datetime.datetime(1995, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/brown.jpg', 'longDescription': 'Graphics File Formats is a comprehensive guide to the file formats used in computer graphics and related areas. It discusses implementation and design of file formats in a readable style focusing on the basic issues important for the evaluation or development of file formats, including  data types  design goals  color  data organization  data encoding  data compression  classification  and conversion  The second part of the book provides summaries of over 50 graphics file formats in commercial use, such as CGM, DDES, FITS, MPEG, PICT, PostScript, TIFF, QuickTime, RIB, SunRaster, and X bitmap. Following a uniform organization, these summaries are handy reference sources for those needing basic information on these formats.    Written by two computer experts, this book is intended for graphics professionals, programmers and all those in commercial, engineering and scientific applications areas who need to make decisions related to file formats from graphical data.', 'status': 'PUBLISH', 'authors': ['C. Wayne Brown', 'Barry J. Shepherd'], 'categories': ['Computer Graphics']}
    {'_id': 40, 'title': 'Visual Object Oriented Programming', 'isbn': '131723979', 'pageCount': 280, 'publishedDate': datetime.datetime(1995, 2, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/burnett.jpg', 'longDescription': "This first book on the union of two rapidly growing approaches to programming--visual programming and object technology--provides a window on a subject of increasing commercial importance. It is an introduction and reference for cutting-edge developers, and for researchers, students, and enthusiasts interested in the design of visual OOP languages and environments.  Visual Object-Oriented Programming includes chapters on both emerging research and on a few classic systems, that together can help those who design visual object-oriented programming systems avoid some known pitfalls. The book contains an experience report on the use of available visual programming languages in a commercial setting, and chapters, by some of the leaders of this cutting-edge subject, covering systems such as Prograph, VIPR, PURSUIT, ThingLab II, Vampire, Forms/3, Self's environment, Vista, SPE, and Cerno.", 'status': 'PUBLISH', 'authors': ['Margaret M. Burnett', 'Adele Goldberg', '', 'Ted G. Lewis'], 'categories': ['Programming']}
    {'_id': 150, 'title': 'Illustrated Guide to HTTP', 'isbn': '138582262', 'pageCount': 400, 'publishedDate': datetime.datetime(1997, 3, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/hethmon.jpg', 'longDescription': "If you're interested in building a web server -- or if you're developing an application that depends or will depend on current HTTP protocols -- Illustrated Guide to HTTP is for you! It covers the latest HTTP/1.1 protocol standard as found in RFC 2068 and RFC 2069. Any programmer, developer or web manager involved in web-related software needs this book to keep up with this dynamic area.", 'status': 'PUBLISH', 'authors': ['Paul S. Hethmon'], 'categories': ['Internet']}
    {'_id': 176, 'title': 'Object Technology Centers of Excellence', 'isbn': '132612313', 'pageCount': 200, 'publishedDate': datetime.datetime(1996, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/korson.jpg', 'shortDescription': 'Object Technology Centers of Excellence provides guidance to those charged with managing the shift to object technology. It is the only book on the market aimed not at the project level but at the corporate level, with a focus on the infrastructures necessary for a successful transition.', 'longDescription': 'Object Technology Centers (OTC) are technology transfer catalysts for the rapid development and deployment of object-oriented infrastructure. Object Technology Centers of Excellence provides guidance to those charged with managing the shift to object technology. It is the only book on the market aimed not at the project level but at the corporate level, with a focus on the infrastructures necessary for a successful transition.    This book presents case histories of early adopters of OT, which can help you understand the steps your company must take-and paths it should avoid. Object Technology Centers of Excellence is recommended reading in any organization planning or transitioning to OT, not just involved with formal OTCs. The book includes practical advice for managers, members of technical staffs, and consultants.    The case histories involve some heavy hitters:    IBM  Wiltel  The Travelers  Bell Northern Research  Also, summaries are presented for Andersen Consulting, Northern Telecom, Prudential Insurance Company, Ascom Nexion, and several others.', 'status': 'PUBLISH', 'authors': ['Timothy D. Korson', 'Vijay K. Vaishnavi'], 'categories': ['Object-Technology Programming', '']}
    {'_id': 199, 'title': 'Doing IT Right', 'isbn': '133964256', 'pageCount': 350, 'publishedDate': datetime.datetime(1995, 12, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/lorin.jpg', 'shortDescription': 'Doing IT Right explores IT in its full complexity. It explains fundamental issues of hardware and software structures; it illuminates central issues of networking and encapsulates the essence of client/server computing; its coverage of costing, risk assessment, and due diligence in making computing decisions is unique.', 'longDescription': "Only a handful of Information Technology leaders understand the complete range of IT issues, from basic technology to business strategy. One of them, Harold Lorin, has written a definitive guide for the IT decision maker, the technologist, and the system developer.    The breadth and insight of Doing IT Right is unparalleled. Its usefulness as a guide to deeper understanding of business computing will be appreciated by professionals and managers at all levels. This book covers a rich collection of topics, each explained, interrelated, and placed in a coherent framework so that its importance and likely evolution are clear. The author does not shy away from stating his views; he provides color, insight and humor.    Doing IT Right is a tour de force based on Lorin's prodigious knowledge of the industry derived from years of involvement with development and marketing at IBM and other systems houses and from consulting in a variety of environments. It also has its roots in a great many publications of the author, from trade and journal articles and book chapters to six earlier books.    Doing IT Right explores IT in its full complexity. It explains fundamental issues of hardware and software structures; it illuminates central issues of networking and encapsulates the essence of client/server computing; its coverage of costing, risk assessment, and due diligence in making computing decisions is unique; its presentation of the concepts and issues of object-orientation was considered by the managers at an IBM development laboratory to be Unique and more informative than fifteen other OO presentations put together.", 'status': 'PUBLISH', 'authors': ['Harold Lorin'], 'categories': ['Business', 'Software Engineering']}
    {'_id': 206, 'title': 'SNA and TCP/IP Enterprise Networking', 'isbn': '131271687', 'pageCount': 540, 'publishedDate': datetime.datetime(1997, 9, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/lynch.jpg', 'shortDescription': "SNA and TCP/IP Enterprise Networking shows the reader how enterprise networking evolved, what approaches and techniques can be used today, and where tomorrow's trends lie, illustrating among others Web-to-SNA connectivity and Java based integration approaches.", 'longDescription': 'Most textbooks concentrate on presenting the theory, concepts, and products, with examples of implementations in some cases. The distinctive quality of SNA and TCP/IP Enterprise Networking is in its structure. It answers not only "What ", "Why ", and "How ", but also "What\'s next ". It shows the reader how enterprise networking evolved, what approaches and techniques can be used today, and where tomorrow\'s trends lie, illustrating among others Web-to-SNA connectivity and Java based integration approaches.    SNA and TCP/IP Enterprise Networking was written by visionaries, scientists, networking product developers, industry experts, consultants, and end-user representatives, who not only implement the products but also participate in definition of open networking standards. It should be equally appealing to the network practitioners implementing technology as the senior managers making strategic decisions on enterprise networking.', 'status': 'PUBLISH', 'authors': ['Daniel C. Lynch', 'James P. Gray', 'and Edward Rabinovitch', 'editors'], 'categories': ['Software Engineering', 'Theory']}
    {'_id': 211, 'title': 'Comprehensive Networking Glossary and Acronym Guide', 'isbn': '013319955X', 'pageCount': 208, 'publishedDate': datetime.datetime(1995, 1, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/malkin.jpg', 'shortDescription': 'This glossary offers a complete collection of technical terms and acronyms used in the networking industry.', 'longDescription': 'This glossary offers a complete collection of technical terms and acronyms used in the networking industry. It covers general networking terminology, the specific terminology used in the Internet, and terms and acronyms specific to AppleTalk, IP, IPX, SNA, and OSI. It also covers national and international networking organizations and several major networks.    Organized in case-insensitive, alphabetic order, entries present well written definitions, understandable to novice readers and useful to experts. The glossary and the glossary entries are:    verified  cross-referenced  comprehensive  concise  understandable  For extra guidance, the book ends with three appendices, each listing the entries in one of three subject areas: networks and organizations, security, and applications and protocols.  The Comprehensive Networking Glossary and Acronym Guide is a valuable, single-source reference for the practical terminology of networking as well as a guide to networks and networking organizations.', 'status': 'PUBLISH', 'authors': ['Gary Scott Malkin'], 'categories': ['Internet']}
    {'_id': 205, 'title': 'Power-3D', 'isbn': '138412146', 'pageCount': 550, 'publishedDate': datetime.datetime(1997, 10, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/lussier.jpg', 'longDescription': 'In the past, serious computer graphics programmers generally had to use "industrial strength" workstation hardware and software. Now, advanced graphics capabilities have become available in the PC arena. Whether you\'re a programmer, 3D enthusiast, C++ coder, games developer or animation specialist, POWER-3D will help you with fast, practical 3D implementations in the Windows environments.', 'status': 'PUBLISH', 'authors': ['Kyle Lussier'], 'categories': ['Computer Graphics']}
    {'_id': 214, 'title': 'Internet BBSs', 'isbn': '132869985', 'pageCount': 400, 'publishedDate': datetime.datetime(1996, 10, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/mark.jpg', 'shortDescription': 'Internet BBSs: A Guided Tour provides in-depth coverage of the new world of true BBSs now available world-wide. It is a valuable resource for anyone currently using the Internet.', 'longDescription': "OK, so you use the Internet. You've surfed some Web sites and maybe sent e-mail. But, chances are, you've overlooked the rich and really personal dimension of the Internet represented by the explosive growth of Internet BBSs. That's because up till now BBS publications were limited in scope to the old era of dial-up BBSs.    Until recently the world of BBSs was geographically compartmentalized: in practical terms only the BBSs within a local telphone call were accessible. Now, the Internet has made all Internet BBSs accessible to anyone in the world. Internet BBSs: A Guided Tour provides in-depth coverage of this new world of true BBSs now available world-wide. It is a valuable resource for anyone currently using the Internet. Users of the major on-line service forums and chat groups should also read it to find out how they can access a much richer variety of BBSs at less cost.", 'status': 'PUBLISH', 'authors': ['Richard Scott Mark'], 'categories': ['Internet']}
    {'_id': 222, 'title': 'Client/Server Applications on ATM Networks', 'isbn': '137353006', 'pageCount': 350, 'publishedDate': datetime.datetime(1997, 1, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/minoli2.jpg', 'shortDescription': 'Client/Server Appliactions on ATM Networks discusses ATM as the key technology for transforming the enterprise network from data-only to an integrated data, voice, video, image and multimedia corporate infrastructure.', 'longDescription': 'Today, to meet the surging demands of client/server company-wide processes--distributed cooperative computing, business/scientific imaging, video conferencing, multimedia, distance learning and many more--corporations are finding they must extend high-speed communications beyond just a few key sites. This book discusses ATM as the key technology for transforming the enterprise network from data-only to an integrated data, voice, video, image and multimedia corporate infrastructure.    Previous books have covered ATM and client/server separately. This book, intended for networking professionals, is unique in its focus on the hows and whys of the inevitable marriage of these two technologies.', 'status': 'PUBLISH', 'authors': ['Daniel Minoli', 'Andrew Schmidt'], 'categories': ['Client-Server', 'Networking']}
    {'_id': 221, 'title': 'Planning and Managing ATM Networks', 'isbn': '132621894', 'pageCount': 320, 'publishedDate': datetime.datetime(1997, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/minoli.jpg', 'shortDescription': 'Planning and Managing ATM Networks covers strategic planning, initial deployment, overall management, and the day-to-day operation of ATM networks.', 'longDescription': 'Not only is ATM the best available means to greater transmission capacity, it has also the best potential to meet the needs for sophisticated service control, distributed network oversight, efficient operation, and improved flexibility.    Planning and Managing ATM Networks covers strategic planning, initial deployment, overall management, and the day-to-day operation of ATM networks. It defines steps to determine requirements for ATM networks, as ATM implementation becomes widespread in the corporate enterprise network. It describes fundamental management concepts and procedures, including fault and configuration management, performance management, accounting, and security.', 'status': 'PUBLISH', 'authors': ['Daniel Minoli', 'Thomas W. Golway', '', 'Norris P. Smith'], 'categories': ['Client-Server', 'Networking']}
    {'_id': 266, 'title': 'Working with Objects', 'isbn': '134529308', 'pageCount': 420, 'publishedDate': datetime.datetime(1995, 8, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/reenskaug.jpg', 'shortDescription': '"The first method that deals realistically with reuse, and one of the few that comes close to describing what I do when I design." --Ralph Johnson, University of Illinois', 'longDescription': 'Working With Objects is the authoritative account of the highly successful OOram method for software analysis, design, development, maintenance and reuse. OOram has been fine-tuned over a decade on hundreds of projects by Trygve Reenskaug and his collaborators. It is supported by available CASE tools, training, and consulting.    Working With Objects is the source on a method which takes an evolutionary step forward in object-oriented development practices. OOram adds the intuitively simple but powerful concept of a role to object-oriented models and methods. For example, imagine trying to describe a person as an object. The most effective way to do this would be to independently describe each of the roles that person adopts (parent, employee, and so on) and then define how the person supports them. These ideas form the heart of the OOram approach.    In a presentation rich with examples, Working With Objects is anything but the typical, dry methodology book. It tells real-life stories. It teaches how to apply role modeling and benefit from its inherent advantages, including:    Multiple views of the same model  Support for both data- and process-centered approaches  Large systems described through a number of distinct models  Derivation of composite models from simpler, base models  Decentralized management of very large systems  Programming language-independent design  Step-by-step transformation of models into implementations  Integration of powerful reuse techniques with work policies, processes and organization', 'status': 'PUBLISH', 'authors': ['Trygve Reenskaug'], 'categories': ['Object-Oriented Programming']}
    {'_id': 270, 'title': 'Microsoft Office Essentials', 'isbn': '132623129', 'pageCount': 480, 'publishedDate': datetime.datetime(1996, 7, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/richardson2.jpg', 'shortDescription': 'Microsoft Office Essentials simply covers the things you really want to know and skips over all those esoteric features that 99 out of 100 readers never use.', 'longDescription': "Many books on Microsoft Office try to cover every feature of the software. You don't use every feature, though. Microsoft Office Essentials simply covers the things you really want to know and skips over all those esoteric features that 99 out of 100 readers never use.    You will learn, among other things, how to use:    - Microsoft Office Manager and Shortcut Bar  - Word's formatting tools -- templates, styles, and wizards  - Word to create newsletters, reports, etc.  - Word and Excel together, capitalizing on the strengths of both  - Excel to create simple workbooks for such tasks as balancing your checkbook or preparing a budget  - Excel to display your data with charts  - Powerpoint to develop a presentation that combines words and clip-art images    Once you get to know Microsoft Office Essentials you'll want to keep it within easy reach of you computer...", 'status': 'PUBLISH', 'authors': ['Ronny Richardson'], 'categories': ['Business']}
    {'_id': 274, 'title': 'Personal Videoconferencing', 'isbn': '013268327X', 'pageCount': 420, 'publishedDate': datetime.datetime(1996, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/rosen.jpg', 'shortDescription': '"Personal Videoconferencing is having an enormous impact on business. Evan Rosen has quantified that impact with examples of real world implementations and provided a primer on how businesses can achieve this competitive advantage for themselves."  --Frank Gill, Executive Vice President, Internet and Communications Group, Intel    "The book is very good: it is clear and the examples of user applications are excellent"  --Ralph Ungermann, CEO, First Virtual Corporation ', 'longDescription': 'The first book on the most powerful communication tool since the development of the personal computer, Personal Videoconferencing will help you streamline your business and gain a competitive edge. It summarizes the experience of more than seventy companies in many industries in the use of desktop and laptop videoconferencing to collaborate on documents and applications while communicating through video, face-to-face. Anyone who shares information with others will benefit from reading this book.  ', 'status': 'PUBLISH', 'authors': ['Evan Rosen'], 'categories': ['Networking']}
    {'_id': 283, 'title': 'Multiprotocol over ATM', 'isbn': '138892709', 'pageCount': 341, 'publishedDate': datetime.datetime(1998, 3, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/schmidt.jpg', 'shortDescription': 'With the detailed coverage of the entire set of protocols in Multiprotocol over ATM, you can be equal to the task.', 'longDescription': "Networks constructed with current ATM protocol design standards exceed by far former network capabilities. Unfortunately, this new ATM power and flexibility come at the cost of greater complexity. With the detailed coverage of the entire set of protocols in Multiprotocol over ATM, you can be equal to the task. If you're a network manager or designer, responsible for planning, building, or managing an enterprise or campus network, this book is for you.", 'status': 'PUBLISH', 'authors': ['Andrew Schmidt', 'Daniel Minoli'], 'categories': ['Internet', 'Networking']}
    {'_id': 293, 'title': 'Making Sense of Java', 'isbn': '132632942', 'pageCount': 180, 'publishedDate': datetime.datetime(1996, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/simpson.jpg', 'shortDescription': 'Making Sense of Java clearly and concisely explains the concepts, features, benefits, potential, and limitations of Java.', 'longDescription': "The meteoric rise of interest in Java, and the simultaneous rise in Java-related hype, make this book's no-nonsense evaluation essential reading for all levels of professionals, from managers to programmers. Making Sense of Java clearly and concisely explains the concepts, features, benefits, potential, and limitations of Java. It is not a programmer's how-to guide and assumes little technical knowledge, though software developers will find this lucid overview to be a valuable introduction to the possible uses and capabilities of Java.", 'status': 'PUBLISH', 'authors': ['Bruce Simpson', 'John Mitchell', 'Brian Christeson', 'Rehan Zaidi', '', 'Jonathan Levine'], 'categories': ['Java', 'Business']}
    {'_id': 300, 'title': 'Implementing PeopleSoft Financials', 'isbn': '138411808', 'pageCount': 220, 'publishedDate': datetime.datetime(1997, 1, 1, 8, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/stephens.jpg', 'shortDescription': 'Implementing PeopleSoft Financials discusses the issues that arise and the pitfalls to avoid. Every member of the implementation team--from entry-level accounting clerk through MIS staff to executive sponsors--will benefit from reading this book.', 'longDescription': "The PeopleSoft promise is enticing: Here's a way for your company to implement a complete and flexible financial infrastructure in a client/server environment without the burdens of low-level programming. But, implementation remains complex and requires reengineering of the business processes and cultures of the using organizations. The author, an experienced implementor of PeopleSoft systems, discusses the issues that arise and the pitfalls to avoid. Every member of the implementation team--from entry-level accounting clerk through MIS staff to executive sponsors--will benefit from reading this book. The views it contains, coming from an independent authority, will also prove useful to those who are considering adopting PeopleSoft for their companies.", 'status': 'PUBLISH', 'authors': ['Early Stephens'], 'categories': ['Business', 'Client-Server']}
    {'_id': 519, 'title': 'Multimedia Computing', 'isbn': '020152029X', 'pageCount': 0, 'publishedDate': datetime.datetime(1993, 9, 1, 7, 0), 'status': 'PUBLISH', 'authors': ['Matthew E. Hodges'], 'categories': []}
    {'_id': 530, 'title': 'Implementing SAP R/3, Second Edition', 'isbn': '013889213X', 'pageCount': 0, 'publishedDate': datetime.datetime(1997, 9, 1, 7, 0), 'status': 'PUBLISH', 'authors': [], 'categories': []}
    {'_id': 525, 'title': 'TCP/IP Programming for OS/2', 'isbn': '132612496', 'pageCount': 0, 'publishedDate': datetime.datetime(1996, 4, 23, 7, 0), 'status': 'PUBLISH', 'authors': ['Steven J. Gutz'], 'categories': []}
    {'_id': ObjectId('53c2ae8528d75d572c06adb2'), 'title': 'Remote LAN Access', 'isbn': '134944518', 'pageCount': 300, 'publishedDate': datetime.datetime(1996, 6, 1, 7, 0), 'thumbnailUrl': 'https://s3.amazonaws.com/AKIAJC5RLADLUMVRPFDQ.book-thumb-images/fritz.jpg', 'shortDescription': 'Remote LAN Access will help you cut through the haze typically encountered when designing and installing remote LAN connections.', 'longDescription': "If you're a networking professional looking to connect your corporate network to remote locations anywhere in the world, this book is for you! If you're a manager, engineer, technician or consultant responsible for providing remote connectivity to corporate networks for branch offices, telecommuters, and travelers, this book is for you! Remote LAN Access will help you cut through the haze typically encountered when designing and installing remote LAN connections.", 'status': 'PUBLISH', 'authors': [], 'categories': []}
    ==================================================
    Total de livros:  22
    ==================================================
    

**6) Ainda na consulta dos livros com a tag isbn menor ou igual a "1617200000".
Recupere apenas os nomes dos livros.
Para facilitar, você pode usar o comando pretty() ou, para facilitar ainda mais,
use algo similar ao comando db.customers.find({ }, {"name":1, "age":1}) e nesse
caso tire o pretty().
Nessa lista retornada anote o título do livro começado com a letra G.**


```python
filtro = {"isbn": {"$lte": "1617200000"}}
projecao = {"title": 1, "_id": 0}

resultados = db.livros.find(filtro, projecao)

for resultado in resultados.distinct("title"):
    print(resultado)

```

    Client/Server Applications on ATM Networks
    Comprehensive Networking Glossary and Acronym Guide
    Designing Hard Software
    Doing IT Right
    Graphics File Formats
    Illustrated Guide to HTTP
    Implementing PeopleSoft Financials
    Implementing SAP R/3, Second Edition
    Internet BBSs
    Making Sense of Java
    Microsoft Office Essentials
    Multimedia Computing
    Multiprotocol over ATM
    Object Technology Centers of Excellence
    Personal Videoconferencing
    Planning and Managing ATM Networks
    Power-3D
    Remote LAN Access
    SNA and TCP/IP Enterprise Networking
    TCP/IP Programming for OS/2
    Visual Object Oriented Programming
    Working with Objects
    

* **Explicando o script acima:**

    * Na primeira linha, definimos o filtro para a tag ISBN menor ou igual a "1617200000".
    * Na segunda linha, definimos a projeção para incluir apenas o campo "title" e excluir o campo "_id".
    * Na terceira linha, realizamos a consulta no banco de dados com o filtro e projeção definidos.
    * Na quarta linha, utilizamos a função distinct() para retornar apenas os valores únicos do campo "title".
    * Por fim, iteramos sobre os resultados e imprimimos os nomes dos livros.

* **Agora vamos localizar apenas os livros com a tag isbn menor ou igual a "1617200000", cujo título começam com a letra "G".**


```python
resultado = db.livros.find({"isbn": {"$lte": "1617200000"}, "title": {"$regex": "^G"}})
for livro in resultado:
    print(livro["title"])

```

    Graphics File Formats
    
* **Explicando a consulta:**

* {"isbn": {"$lte": "1617200000"}: seleciona os documentos em que o campo isbn é menor ou igual a "1617200000".
* {"title": {"$regex": "^G"}: seleciona os documentos em que o campo titulo começa com a letra "G".
* Dentro do loop, imprimimos apenas o valor do campo title de cada documento retornado pela consulta.
* **7) Execute o comando abaixo para inserir mais 4 livros.**


```python
db.livros.insert_many([    {"title" : "Saci Pererê", "isbn" : "100", "pageCount" : 0, "publishedDate": ("2000-10-01T07:00:00Z"), "status" : "PUBLISH", "authors" : [ ], "categories" : [ ]},
    {"title" : "A Cuca", "isbn" : "99", "pageCount" : 0, "publishedDate": ("2000-10-01T07:00:00Z"), "status" : "PUBLISH", "authors" : [ ], "categories" : [ ]},
    {"title" : "Curupira", "isbn" : "98", "pageCount" : 0, "publishedDate": ("2000-10-01T07:00:00Z"), "status" : "PUBLISH", "authors" : [ ], "categories" : [ ]},
    {"title" : "Jeca Tatu", "isbn" : "97", "pageCount" : 0, "publishedDate": ("2000-10-01T07:00:00Z"), "status" : "PUBLISH", "authors" : [ ], "categories" : [ ]}
])

```




    <pymongo.results.InsertManyResult at 0x1da10d347f0>



* **8) Execute o comando para saber quantos livros tem a chave isbn menor ou iguala "100000" ($lte: "100000").**


```python
resultado = db.livros.find({"isbn": {"$lte": "100000"}})
total = 0
# Exibir a lista de livros encontrados.
for livro in resultado:
    # print(livro)  
    total = total + 1
    
# Contar o número de livros encontrados
print("Total de livros: ", total)
```

    Total de livros:  5
    

* **9) Ainda utilizando o comando do passo anterior (8), o comando feito para saber quantos livros tem a chave isbn menor ou igual a "100000" ($lte: "100000").Quais são os 2 primeiros livros da lista? Dica, use o comando pretty() e limit().**


```python
resultado = db.livros.find({"isbn": {"$lte": "100000"}}).limit(2)
for livro in resultado:
    print(livro["title"])

```

    Comprehensive Networking Glossary and Acronym Guide
    Personal Videoconferencing
    

* **10) O que faz o comando abaixo? Ele mostra quantos livros e por que isso?
db.livros.find({isbn:{$lte: "100000"}}).pretty().skip(2)**


```python
resultado = db.livros.find({"isbn": {"$lte": "100000"}}).skip(2)
for livro in resultado:
    print(livro["title"]) # para facilitar vamos imprimir apenas os nomes dos títulos.
```

    Multimedia Computing
    Implementing SAP R/3, Second Edition
    Saci Pererê
    

R. O comando db.livros.find({isbn:{$lte: "100000"}}).pretty().skip(2) retorna uma lista de livros com a chave isbn menor ou igual a "100000", porém com dois primeiros resultados ignorados devido ao comando skip(2).

O método pretty() formata a saída em um formato legível para humanos, enquanto skip(2) é usado para pular os dois primeiros resultados da lista.

* **11) O que faz o comando abaixo? Ele mostra quantos livros e porque isso?
Observe o que há de comum nos títulos dos livros.
db.livros.find({title: /Windows/}).count()**

R. O comando db.livros.find({title: /Windows/}).count() faz uma busca no banco de dados de todos os livros que possuem a palavra "Windows" no título e retorna a contagem total de livros que foram encontrados.

A razão para isso é que a função count() retorna o número de documentos que correspondem a uma consulta no MongoDB. Já o operador /Windows/ é uma expressão regular que procura por documentos que tenham a palavra "Windows" em qualquer posição no título.

Portanto, a contagem resultante indica quantos livros existem no banco de dados que têm a palavra "Windows" em seu título.

* **Script python para realizar a mesma consulta**:


```python
# Script como pymongo para realizar a tarefa 11
# executa a consulta utilizando a expressão regular
resultado = db.livros.find({'title': {'$regex': 'Windows'}})
total = 0

# itera sobre o resultado
for livro in resultado:
    # print(livro)  
    total = total + 1
    
# Contar o número de livros encontrados
print("="*50)
print("Total de livros: ", total)
print("="*50)

```

    ==================================================
    Total de livros:  11
    ==================================================
    

* **12) No comando find, vamos acrescentar o comando sort descendente (-1)
para a chave pageCount.
Utilize o comando limit = 2, pois o que quero saber é quais são os dois menores
valores para a chave pageCount.
A dica é usar o find({ }, {"pageCount":1, "_id":0}) para trazer apenas a chave
pageCount desejada.**


```python
result = db.livros.find({}, {"pageCount": 1, "_id": 0}).sort([("pageCount", -1)]).limit(2)

for r in result:
    print(r)


```

    {'pageCount': 1101}
    {'pageCount': 1096}
    

* **Explicação**

    Esse script vai retornar os dois documentos com os menores valores na chave pageCount em ordem ascendente. A função find retorna apenas a chave pageCount e o _id é excluído do resultado. O resultado é ordenado em ordem ascendente pela chave pageCount com o comando sort([("pageCount", 1)]) e, em seguida, é limitado a 2 documentos com o comando limit(2). O resultado é impresso com um loop for que itera sobre cada documento retornado pelo cursor.
    
obs: enuciado está errado, neste caso é o maior e não o menor valor


```python

```
