# Bootcamp XPe: Arquiteto de Machine Learning

## Trabalho Prático
 **Módulo 3: Sistemas de Recomendação**

## Objetivos de Ensino
**Exercitar os seguintes conceitos trabalhados no Módulo:**

* **1. Distância e similaridade.**
* **2. Recomendação baseada em conteúdo.**

## Enunciado

**Em um ambiente de desenvolvimento em Python (recomenda-se o Google
Colaboratory), implemente as funções descritas para responder às questões
objetivas.**

## Atividades
**Os alunos deverão desempenhar as seguintes atividades:**




* **1. Acessar o ambiente Google Colaboratory (recomendado) ou qualquer
ambiente de desenvolvimento em Python.**
* **2. Implementar as seguintes funções em Python:**

**a. Uma função que calcula a distância euclidiana entre dois vetores x e
y:**

$$\begin{equation}d(x,y) = \sqrt{\sum_{i=1}^{n}(x_i - y_i)^2}=\left\Vert \mathbf{x} - \mathbf{y} \right\Vert2\end{equation}$$

* **Essa fórmula utiliza a diferença entre os valores de cada dimensão dos vetores, elevados ao quadrado, somados e depois tirada a raiz quadrada dessa soma. O resultado é a distância Euclidiana entre os vetores 𝑥 e 𝑦.**


```python
# Função para calcular a distância euclidiana entre dois vetores
import numpy as np

def euclidean_distance(x, y):
    return np.sqrt(np.sum((x - y) ** 2))

```


```python
# Exemplo da função:
x = np.array([1, 2, 3])
y = np.array([4, 5, 6])
distance = euclidean_distance(x, y)
print(f"A distância euclidiana entre os vetores x e y : {distance}")  

```

    A distância euclidiana entre os vetores x e y : 5.196152422706632
    

* **Interpretação do resultado**:
  * Quanto menor a distância Euclidiana entre dois vetores, maior é a sua similaridade ou proximidade. 

**b. Uma função que calcula a distância de Hamming (quantidade de posições distintas) entre dois vetores binários n-dimensionais x e y:**

**$$\begin{equation}
h(x,y) = \sum_{i=1}^{n} |x_i - y_i|
\end{equation}$$**




```python
# função que calcula a distância de Hamming:
def hamming_distance(x, y):
    """
    Calcula a distância de Hamming entre dois vetores binários de mesma dimensão.
    
    Argumentos:
    x -- um vetor binário de dimensão n
    y -- um vetor binário de dimensão n
    
    Retorna:
    A distância de Hamming entre x e y
    """
    
    if len(x) != len(y):
        raise ValueError("Os vetores devem ter a mesma dimensão")
        
    return sum([1 for i in range(len(x)) if x[i] != y[i]])

```


```python
# Exemplo da Função:
x = [0, 1, 0, 1, 1, 0]
y = [1, 1, 0, 0, 1, 1]
dist = hamming_distance(x, y)
print(f"A distância de Hamming entre x e y é:{dist}") 

```

    A distância de Hamming entre x e y é:3
    

* O resultado significa que existem 3 bits que diferem entre os dois vetores.

**Uma função que calcula a distância de Hamming normalizada
(quantidade de posições distintas dividida pela dimensão dos vetores)
entre dois vetores binários n-dimensionais x e y:**

$$\begin{equation}
d_{norm}(x,y) = \frac{1}{n}\sum_{i=1}^{n} |x_i - y_i|
\end{equation}$$


```python
# função que calcula a distância de Hamming normalizada:
def normalized_hamming_distance(x, y):
    """
    Calcula a distância normalizada de Hamming entre dois vetores binários de mesma dimensão.
    
    Argumentos:
    x -- um vetor binário de dimensão n
    y -- um vetor binário de dimensão n
    
    Retorna:
    A distância normalizada de Hamming entre x e y
    """
    
    if len(x) != len(y):
        raise ValueError("Os vetores devem ter a mesma dimensão")
        
    n = len(x)
    return sum([x[i] ^ y[i] for i in range(n)]) / n

```


```python
# Exemplo da função:
x = [0, 1, 0, 1, 1, 0]
y = [1, 1, 0, 0, 1, 1]
dist_norm = normalized_hamming_distance(x, y)
print(f"A distância de Hamming Normalizada entre x e y é:{dist_norm}")  

```

    A distância de Hamming Normalizada entre x e y é:0.5
    

* O resultado é 0.5, significa que existem 3 bits que diferem entre os dois vetores, em uma dimensão de 6 bits, o que resulta em uma distância normalizada de 1/2.
* A distância normalizada de Hamming é simplesmente a contagem média dos bits que diferem entre os dois vetores.

Uma função para calcular a similaridade de cossenos entre dois vetores
n-dimensionais x e y:

$$\begin{equation}
\cos(x,y) = \frac{\mathbf{x} \cdot \mathbf{y}}{\left\Vert \mathbf{x} \right\Vert \left\Vert \mathbf{y} \right\Vert} = \frac{\sum_{i=1}^{n} x_i y_i}{\sqrt{\sum_{i=1}^{n} x_i^2}\sqrt{\sum_{i=1}^{n} y_i^2}}
\end{equation}$$


```python
# Função para o cálculo da similaridade de cossenos entre dois vetores:
import math

def cosine_similarity(x, y):
    """
    Calcula a similaridade de cossenos entre dois vetores de mesma dimensão.
    
    Argumentos:
    x -- um vetor de dimensão n
    y -- um vetor de dimensão n
    
    Retorna:
    A similaridade de cossenos entre x e y
    """
    
    if len(x) != len(y):
        raise ValueError("Os vetores devem ter a mesma dimensão")
        
    dot_product = sum([x[i] * y[i] for i in range(len(x))])
    norm_x = math.sqrt(sum([x[i]**2 for i in range(len(x))]))
    norm_y = math.sqrt(sum([y[i]**2 for i in range(len(y))]))
    
    return dot_product / (norm_x * norm_y)

```


```python
# Exemplo da função: com resultado de similaridade.
x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]
similarity = cosine_similarity(x, y)
print(f"Resultado da similaridade de cossenos entre x e y:{similarity}")

```

    Resultado da similaridade de cossenos entre x e y:1.0
    

* Os vetores x e y têm uma relação linear perfeita (ou seja, um é um múltiplo escalar do outro), portanto, a similaridade de cossenos é 1.0.
* Em caso de resultado 0 indica que os vetores são ortogonais.
* Em caso de -1 indica que os vetores são opostos.

# Exemplo de aplicações da distância Euclidiana:

* Aprendizado de máquina: A distância Euclidiana é usada em muitos algoritmos de aprendizado de máquina, como k-means clustering, nearest neighbors, regressão linear, SVM (Support Vector Machines), etc. Ela é usada para medir a distância entre os dados de treinamento e os dados de teste e para encontrar a melhor correspondência entre os dados.

* Processamento de imagens: A distância Euclidiana é usada para medir a semelhança entre duas imagens ou partes de imagens. Ela é usada em algoritmos de detecção de objetos, alinhamento de imagens, reconhecimento de faces, etc.

* Análise de dados: A distância Euclidiana é usada para medir a distância entre duas observações ou pontos em um espaço n-dimensional. Ela é usada em análise de clusters, detecção de anomalias, classificação de dados, etc.

* Engenharia mecânica: A distância Euclidiana é usada para medir a distância entre dois pontos em um espaço tridimensional. Ela é usada em projetos de engenharia para medir a distância entre peças, componentes, etc.

* Biologia molecular: A distância Euclidiana é usada para medir a distância entre duas sequências de DNA ou proteínas. Ela é usada em algoritmos de alinhamento de sequências, busca de homologia, etc.

* Economia: A distância Euclidiana é usada para medir a distância entre duas cidades ou regiões com base em suas características socioeconômicas. Ela é usada em análise de clusters, previsão de demanda, etc.

# Exemplo de Aplicações da distância de Hamming:
* Detecção e correção de erros: A distância de Hamming pode ser usada para detectar e corrigir erros em códigos de barras, códigos QR, sistemas de comunicação sem fio, e outros sistemas de transmissão de dados. Por exemplo, ao codificar informações em um conjunto de bits, pode-se adicionar um número fixo de bits de verificação que são calculados usando a distância de Hamming. Quando os dados são recebidos, pode-se comparar os bits de verificação com os dados originais para verificar se houve algum erro de transmissão.

* Processamento de imagens: A distância de Hamming pode ser usada para comparar imagens binárias e determinar a semelhança entre elas. Por exemplo, pode-se comparar imagens de impressões digitais para verificar se elas pertencem à mesma pessoa.

* Algoritmos de pesquisa: A distância de Hamming pode ser usada para classificar dados em um banco de dados. Por exemplo, pode-se classificar os usuários em um site com base em seus perfis ou classificar produtos em uma loja online com base em seus recursos.

* Análise de sequências de DNA: A distância de Hamming pode ser usada para comparar sequências de DNA e identificar mutações. Por exemplo, pode-se comparar o DNA de um paciente com o DNA de um indivíduo saudável para identificar mutações que possam causar doenças.

