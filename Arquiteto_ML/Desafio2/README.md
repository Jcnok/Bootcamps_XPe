# 🕵️‍♂️ Classificação de Fake News com Deep Learning 📰

## 🎯 Objetivo

Este projeto tem como objetivo construir um modelo de Machine Learning capaz de classificar notícias como **falsas** ou **verdadeiras** utilizando Deep Learning, especificamente a arquitetura **LSTM (Long Short-Term Memory)**.

## 🚀 Abordagem

1. **Coleta e Preparação dos Dados:**
    - Os dados foram coletados do Kaggle ([link para o dataset](https://www.kaggle.com/c/fake-news/data#)).
    - Realizamos a limpeza e pré-processamento dos dados, incluindo:
        - Remoção de valores ausentes.
        - Remoção de caracteres especiais e pontuação.
        - Conversão para letras minúsculas.
        - _Stemming_ (redução de palavras ao seu radical).
        - Remoção de _stop words_ (palavras comuns que não agregam significado).

2. **Criação do Modelo LSTM:**
    - Utilizamos o Keras para construir um modelo sequencial com as seguintes camadas:
        - **Embedding:** Para representar as palavras como vetores numéricos.
        - **LSTM:** Para capturar as dependências de longo prazo no texto.
        - **Dense:** Camada de saída com ativação sigmoid para classificação binária.
    - O modelo foi compilado com a função de perda `binary_crossentropy`, otimizador `adam` e métrica de avaliação `accuracy`.

3. **Treinamento e Avaliação:**
    - Os dados foram divididos em conjuntos de treino e teste.
    - O modelo foi treinado com os dados de treino e avaliado com os dados de teste.
    - Obtivemos uma acurácia de **90.95%%** na classificação de notícias falsas e verdadeiras.

## 📊 Resultados

O modelo apresentou um bom desempenho na tarefa de classificação, demonstrando a capacidade da arquitetura LSTM em capturar informações relevantes do texto para identificar notícias falsas.

## 💡 Conclusões

- O Deep Learning, especialmente a arquitetura LSTM, se mostra uma ferramenta poderosa para a detecção de fake news.
- O pré-processamento adequado dos dados é crucial para o desempenho do modelo.
- Este projeto pode ser expandido com a inclusão de outros recursos e técnicas para melhorar ainda mais a acurácia.

## 🛠️ Ferramentas Utilizadas

- Python
- Pandas
- NLTK
- Keras
- TensorFlow
- Scikit-learn

## Resolução do desafio: [Desafio2 - Classificação de Fake News](https://github.com/Jcnok/Bootcamps_XPe/blob/main/Arquiteto_ML/Desafio2/Desafio2.ipynb)

## 👨‍💻 Autor

Julio Okuda - [LinkedIn](https://www.linkedin.com/in/juliookuda/)
