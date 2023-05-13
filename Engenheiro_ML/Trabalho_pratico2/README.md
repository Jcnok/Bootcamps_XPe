# Trabalho Prático 2 - Bootcamp IGTI: Engenheiro(a) de Machine Learning

## Bike Sharing Analysis

**Este repositório contém os arquivos referentes ao trabalho prático do módulo 2 do Bootcamp IGTI de Engenheiro(a) de Machine Learning. O objetivo deste trabalho é realizar a análise de uma base de dados real em Python, com foco em modelos preditivos e séries temporais.**

## Enunciado

O uso de bicicletas como meio de transporte tem crescido nos últimos anos, impulsionado por questões ambientais, de saúde e infraestrutura de trânsito. Para incentivar o uso, cidades ao redor do mundo têm implementado programas de compartilhamento de bicicletas. Nestes sistemas, as bicicletas são retiradas e devolvidas em quiosques automatizados espalhados pela cidade.

As plataformas de compartilhamento de bicicletas costumam coletar diversos tipos de dados, como duração da viagem, localização inicial e final do percurso, entre outros. Esses dados, em conjunto com informações sobre clima, trânsito e relevo, tornam possível uma análise mais robusta do compartilhamento de bicicletas.

O objetivo deste trabalho é analisar os dados coletados pela Universidade do Porto sobre o compartilhamento de bicicletas em uma cidade.

## Dicionário de Dados:

* rec_id: índice do registro de locação.
* datetime: data.
* season: estação do ano (1: inverno, 2: primavera, 3: verão, 4: outono). Relativo ao hemisfério norte.
* year: ano (0: 2011, 1:2012).
* month: mês (1 a 12).
* hour: hora do dia (0 a 23).
* is_holiday: booleano indicando feriado.
* weekday: dia da semana (0: domingo, 1: segunda-feira, …, 6: sábado).
* is_workingday: booleano indicando dia útil.
* weather_condition: (1: limpo, 2: nublado, 3: chuva leve, 4: chuva forte).
* temp: temperatura escalada entre 0 e 1. Valor original em graus Celsius: -8 a 39.
* atemp: sensação térmica escalada entre 0 e 1. Valor original em graus Celsius: -16 a 50.
* humidity: umidade relativa (0 a 1).
* windspeed: velocidade do vento escalada entre 0 e 1 (máximo original: 67).
* casual: número de locações para usuários casuais.
* registered: número de locações para usuários registrados.
* total_count: contador total de aluguéis (casual+registered).

## Atividades

1. Acessar o ambiente Google Colaboratory (recomendado) ou qualquer ambiente de desenvolvimento em Python.
2. Importar as bibliotecas do numpy e pandas, conforme:
3. Carregar o dataset https://pycourse.s3.amazonaws.com/bike-sharing.csv para análise utilizando o pandas. Exemplo:df = pd.read_csv("https://pycourse.s3.amazonaws.com/bike-sharing.csv")
4. Responda as seguintes perguntas:
    - a. Qual o tamanho desse dataset?
    - b. Qual a média da coluna windspeed?
    - c. Qual a média da coluna temp?
    - d. Quantos registros existem para o ano de 2011?
    - e. Quantos registros existem para o ano de 2012?
    - f. Quantas locações de bicicletas foram efetuadas em 2011?
    - g. Quantas locações de bicicletas foram efetuadas em 2012?
    - h. Qual estação do ano contém a maior média de locações de bicicletas?
    - i. Qual estação do ano contém a menor média de locações de bicicletas?
    - j. Qual horário do dia contém a maior média de locações de bicicletas?
    - k. Qual horário do dia contém a menor média de locações de bicicletas?
    - l. Que dia da semana contém a maior média de locações de bicicletas?
    - m. Que dia da semana contém a menor média de locações de bicicletas?
    - n. Às quartas-feiras (weekday = 3), qual horário do dia contém a maior média de locações de bicicletas?
    - o. Aos sábados (weekday = 6), qual horário do dia contém a maior média de locações de bicicletas?



```python
#importando as bibliotecas
import numpy as np
import pandas as pd 
```


```python
link = "https://pycourse.s3.amazonaws.com/bike-sharing.csv"
```


```python
df = pd.read_csv(link)
```


```python
df.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>datetime</th>
      <th>rec_id</th>
      <th>season</th>
      <th>year</th>
      <th>month</th>
      <th>hour</th>
      <th>is_holiday</th>
      <th>weekday</th>
      <th>is_workingday</th>
      <th>weather_condition</th>
      <th>temp</th>
      <th>atemp</th>
      <th>humidity</th>
      <th>windspeed</th>
      <th>casual</th>
      <th>registered</th>
      <th>total_count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2011-01-01</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>0</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0.24</td>
      <td>0.2879</td>
      <td>0.81</td>
      <td>0.0</td>
      <td>3</td>
      <td>13</td>
      <td>16</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2011-01-01</td>
      <td>2</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>1</td>
      <td>0</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0.22</td>
      <td>0.2727</td>
      <td>0.80</td>
      <td>0.0</td>
      <td>8</td>
      <td>32</td>
      <td>40</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2011-01-01</td>
      <td>3</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>2</td>
      <td>0</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0.22</td>
      <td>0.2727</td>
      <td>0.80</td>
      <td>0.0</td>
      <td>5</td>
      <td>27</td>
      <td>32</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2011-01-01</td>
      <td>4</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>3</td>
      <td>0</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0.24</td>
      <td>0.2879</td>
      <td>0.75</td>
      <td>0.0</td>
      <td>3</td>
      <td>10</td>
      <td>13</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2011-01-01</td>
      <td>5</td>
      <td>1</td>
      <td>0</td>
      <td>1</td>
      <td>4</td>
      <td>0</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0.24</td>
      <td>0.2879</td>
      <td>0.75</td>
      <td>0.0</td>
      <td>0</td>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
# a. Qual o tamanho desse dataset?
df.shape
```




    (17379, 17)




```python
# b. Qual a média da coluna windspeed?
df['windspeed'].mean()
```




    0.1900976063064631




```python
# c. Qual a média da coluna temp?
df['temp'].mean()
```




    0.4969871684216586




```python
# d. Quantos registros existem para o ano de 2011?
# df.loc[df['year'] == 0]['year'].count() # uma das formas
# df['year'].value_counts()
# forma que acho melhor
df.query('year == 0').shape
```




    (8645, 17)




```python
# e. Quantos registros existem para o ano de 2012?
df.query('year == 1').shape

```




    (8734, 17)




```python
#f. Quantas locações de bicicletas foram efetuadas em 2011?
df.loc[df['year']==0]['total_count'].sum()

```




    1243103




```python
#g. Quantas locações de bicicletas foram efetuadas em 2012?
df.loc[df['year']==1]['total_count'].sum()
```




    2049576




```python
#h. Qual estação do ano contém a maior média de locações de bicicletas?
# (1: inverno, 2: primavera, 3: verão, 4: outono
df[['season','total_count']].groupby('season').mean().T
#R. A maior média é para estação 3(verão) com 236.016237 - como o esperado.
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>season</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>total_count</th>
      <td>111.114569</td>
      <td>208.344069</td>
      <td>236.016237</td>
      <td>198.868856</td>
    </tr>
  </tbody>
</table>
</div>




```python
# i. Qual estação do ano contém a menor média de locações de bicicletas?
# R. A menor média foi para a estação 1(inverno) com 111.114569 conforme o esperado.
```


```python
# j. Qual horário do dia contém a maior média de locações de bicicletas?
df[['hour','total_count']].groupby('hour').mean().sort_values('total_count', ascending=False).head()
# R. O horário que obteve maior média de locação foi as 17 horas com média = 461.452055
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>hour</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>17</th>
      <td>461.452055</td>
    </tr>
    <tr>
      <th>18</th>
      <td>425.510989</td>
    </tr>
    <tr>
      <th>8</th>
      <td>359.011004</td>
    </tr>
    <tr>
      <th>16</th>
      <td>311.983562</td>
    </tr>
    <tr>
      <th>19</th>
      <td>311.523352</td>
    </tr>
  </tbody>
</table>
</div>




```python
# k. Qual horário do dia contém a menor média de locações de bicicletas?
df[['hour','total_count']].groupby('hour').mean().sort_values('total_count', ascending=True).head()
# R. O horário que obteve menor média de locação foi as 4:00 horas com média = 6.352941
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>hour</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4</th>
      <td>6.352941</td>
    </tr>
    <tr>
      <th>3</th>
      <td>11.727403</td>
    </tr>
    <tr>
      <th>5</th>
      <td>19.889819</td>
    </tr>
    <tr>
      <th>2</th>
      <td>22.869930</td>
    </tr>
    <tr>
      <th>1</th>
      <td>33.375691</td>
    </tr>
  </tbody>
</table>
</div>




```python
# l. Que dia da semana contém a maior média de locações de bicicletas?
# weekday: dia da semana (0: domingo, 1: segunda-feira, …, 6: sábado)
df[['weekday','total_count']].groupby('weekday').mean().sort_values('total_count', ascending=False).head()
# R. Quinta-feira é o dia que possui a maior média de locação com média = 196.436665
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>weekday</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>4</th>
      <td>196.436665</td>
    </tr>
    <tr>
      <th>5</th>
      <td>196.135907</td>
    </tr>
    <tr>
      <th>2</th>
      <td>191.238891</td>
    </tr>
    <tr>
      <th>3</th>
      <td>191.130505</td>
    </tr>
    <tr>
      <th>6</th>
      <td>190.209793</td>
    </tr>
  </tbody>
</table>
</div>




```python
# m. Que dia da semana contém a menor média de locações de bicicletas?
df[['weekday','total_count']].groupby('weekday').mean().sort_values('total_count', ascending=True).head()
# R. Domingo é o dia da semana que possui a menor média de locação com média = 177.468825
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>weekday</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>177.468825</td>
    </tr>
    <tr>
      <th>1</th>
      <td>183.744655</td>
    </tr>
    <tr>
      <th>6</th>
      <td>190.209793</td>
    </tr>
    <tr>
      <th>3</th>
      <td>191.130505</td>
    </tr>
    <tr>
      <th>2</th>
      <td>191.238891</td>
    </tr>
  </tbody>
</table>
</div>




```python
# n. Às quartas-feiras (weekday = 3), qual horário do dia contém a maior média
# de locações de bicicletas?
df.query('weekday == 3')[['hour','total_count']].groupby('hour').mean().sort_values('total_count', ascending=False).head()
# R. às quartas-feiras o horário das 17:00 é o que possui a maior média de locação.
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>hour</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>17</th>
      <td>513.144231</td>
    </tr>
    <tr>
      <th>18</th>
      <td>494.029126</td>
    </tr>
    <tr>
      <th>8</th>
      <td>488.326923</td>
    </tr>
    <tr>
      <th>19</th>
      <td>357.504854</td>
    </tr>
    <tr>
      <th>7</th>
      <td>303.980769</td>
    </tr>
  </tbody>
</table>
</div>




```python
# o. Aos sábados (weekday = 6), qual horário do dia contém a maior média de
# locações de bicicletas?
df.query('weekday == 6')[['hour','total_count']].groupby('hour').mean().sort_values('total_count', ascending=False).head()
# R. aos sábados o horário das 13:00 é o que possui a maior média de locação.
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>total_count</th>
    </tr>
    <tr>
      <th>hour</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>13</th>
      <td>385.371429</td>
    </tr>
    <tr>
      <th>15</th>
      <td>382.428571</td>
    </tr>
    <tr>
      <th>14</th>
      <td>381.333333</td>
    </tr>
    <tr>
      <th>12</th>
      <td>375.380952</td>
    </tr>
    <tr>
      <th>16</th>
      <td>366.142857</td>
    </tr>
  </tbody>
</table>
</div>


