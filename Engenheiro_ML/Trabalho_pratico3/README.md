# Trabalho Prático3 - Bootcamp IGTI: Engenheiro(a) de Machine Learning

## Objetivos

* Exercitar conceitos sobre medidas de desempenho para regressão.
* Modelar um problema como uma tarefa de regressão.
* Exercitar conceitos sobre medidas de desempenho para classificação.
* Modelar um problema como uma tarefa de classificação.
* Avaliar um modelo de classificação.
* Exercitar conceitos sobre medidas de desempenho para clusterização.
* Modelar um problema como uma tarefa de clusterização.
* Avaliar um modelo de clustering.

## Enunciado

Neste trabalho, serão modelados três problemas diferentes utilizando medidas de desempenho vistas em sala de aula. Para o problema de regressão, será utilizada a base de dados diabetes_numeric.csv e uma regressão linear. Para o problema de classificação, será utilizada a base de dados bloodtransf.csv e um SVM. Para o problema de clusterização, será utilizada a base de dados wine.csv e o algoritmo KMeans.

## Atividades

**Os alunos deverão desempenhar as seguintes atividades:**
1. Baixar os arquivos referentes às bases de dados e acessá-las pelo collab.
2. Obter informações sobre números de features e instâncias dos datasets.
3. Identificar a existência de dados faltantes nos datasets.
4. Separar os conjuntos de treino e teste, usando a função train_test_slipt, com test_size = 0.37 e random_state = 5762.
5. Importar o sklearn para:
6. Aplicar à base diabetes_numeric.csv o modelo de regressão linear.
7. Avaliar as métricas R2, MAE e MSE.
8. Aplicar à base bloodtransf.csv o modelo SVC, com kernel=rbf.
9. Avaliar as métricas Acurácia, Precision, Recall, F1 e AUROC
10. Aplicar à base wine.csv o modelo kmeans.
11. Identificar o número de clusters mais adequado de acordo com o dataset.
12. Utilizar random_state = 5762.
13. Avaliar as métricas Coeficiente de Silhueta, Davies-Bouldin Score e Mutual Information


```python
import pandas as pd
import numpy as np 
import matplotlib.pyplot as plt 
```


```python
# Sobre o número de instâncias da base de classificação, marque a alternativa CORRETA:
```


```python
df = pd.read_csv('../data/diabetes_numeric.csv')
```


```python
df.shape
```




    (43, 3)




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
      <th>age</th>
      <th>deficit</th>
      <th>c_peptide</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>5.2</td>
      <td>-8.1</td>
      <td>4.8</td>
    </tr>
    <tr>
      <th>1</th>
      <td>8.8</td>
      <td>-16.1</td>
      <td>4.1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>10.5</td>
      <td>-0.9</td>
      <td>5.2</td>
    </tr>
    <tr>
      <th>3</th>
      <td>10.6</td>
      <td>-7.8</td>
      <td>5.5</td>
    </tr>
    <tr>
      <th>4</th>
      <td>10.4</td>
      <td>-29.0</td>
      <td>5.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
# Sobre o número de instâncias da base de classificação, marque a alternativa CORRETA:
```


```python
df_cl = pd.read_csv('../data/bloodtransf.csv')
```


```python
df_cl.shape
```




    (748, 5)




```python
# Sobre a base de clusterização, marque a alternativa CORRETA:
```


```python
df_cluster = pd.read_csv('../data/wine.csv')
df_cluster.head()
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
      <th>class</th>
      <th>Alcohol</th>
      <th>Malic_acid</th>
      <th>Ash</th>
      <th>Alcalinity_of_ash</th>
      <th>Magnesium</th>
      <th>Total_phenols</th>
      <th>Flavanoids</th>
      <th>Nonflavanoid_phenols</th>
      <th>Proanthocyanins</th>
      <th>Color_intensity</th>
      <th>Hue</th>
      <th>OD280%2FOD315_of_diluted_wines</th>
      <th>Proline</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>14.23</td>
      <td>1.71</td>
      <td>2.43</td>
      <td>15.6</td>
      <td>127</td>
      <td>2.80</td>
      <td>3.06</td>
      <td>0.28</td>
      <td>2.29</td>
      <td>5.64</td>
      <td>1.04</td>
      <td>3.92</td>
      <td>1065</td>
    </tr>
    <tr>
      <th>1</th>
      <td>1</td>
      <td>13.20</td>
      <td>1.78</td>
      <td>2.14</td>
      <td>11.2</td>
      <td>100</td>
      <td>2.65</td>
      <td>2.76</td>
      <td>0.26</td>
      <td>1.28</td>
      <td>4.38</td>
      <td>1.05</td>
      <td>3.40</td>
      <td>1050</td>
    </tr>
    <tr>
      <th>2</th>
      <td>1</td>
      <td>13.16</td>
      <td>2.36</td>
      <td>2.67</td>
      <td>18.6</td>
      <td>101</td>
      <td>2.80</td>
      <td>3.24</td>
      <td>0.30</td>
      <td>2.81</td>
      <td>5.68</td>
      <td>1.03</td>
      <td>3.17</td>
      <td>1185</td>
    </tr>
    <tr>
      <th>3</th>
      <td>1</td>
      <td>14.37</td>
      <td>1.95</td>
      <td>2.50</td>
      <td>16.8</td>
      <td>113</td>
      <td>3.85</td>
      <td>3.49</td>
      <td>0.24</td>
      <td>2.18</td>
      <td>7.80</td>
      <td>0.86</td>
      <td>3.45</td>
      <td>1480</td>
    </tr>
    <tr>
      <th>4</th>
      <td>1</td>
      <td>13.24</td>
      <td>2.59</td>
      <td>2.87</td>
      <td>21.0</td>
      <td>118</td>
      <td>2.80</td>
      <td>2.69</td>
      <td>0.39</td>
      <td>1.82</td>
      <td>4.32</td>
      <td>1.04</td>
      <td>2.93</td>
      <td>735</td>
    </tr>
  </tbody>
</table>
</div>




```python
df_cluster['class'].unique()
```




    array([1, 2, 3], dtype=int64)




```python
# Sobre dados faltantes, marque a alternativa CORRETA:
```


```python
df.isnull().sum()
```




    age          0
    deficit      0
    c_peptide    0
    dtype: int64




```python
df_cl.isnull().sum()
```




    V1       0
    V2       0
    V3       0
    V4       0
    Class    0
    dtype: int64




```python
df_cluster.isnull().sum()
```




    class                             0
    Alcohol                           0
    Malic_acid                        0
    Ash                               0
    Alcalinity_of_ash                 0
    Magnesium                         0
    Total_phenols                     0
    Flavanoids                        0
    Nonflavanoid_phenols              0
    Proanthocyanins                   0
    Color_intensity                   0
    Hue                               0
    OD280%2FOD315_of_diluted_wines    0
    Proline                           0
    dtype: int64




```python
# Em relação à modelagem utilizando a regressão linear, marque a alternativa CORRETA sobre a métrica r2:
# Em relação à modelagem utilizando a regressão linear, marque a alternativa CORRETA sobre a métrica MAE:
# Em relação à modelagem utilizando a regressão linear, marque a alternativa CORRETA sobre a métrica MSE:     
```


```python
from sklearn.metrics import r2_score, mean_squared_error, mean_absolute_error
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
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
      <th>age</th>
      <th>deficit</th>
      <th>c_peptide</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>5.2</td>
      <td>-8.1</td>
      <td>4.8</td>
    </tr>
    <tr>
      <th>1</th>
      <td>8.8</td>
      <td>-16.1</td>
      <td>4.1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>10.5</td>
      <td>-0.9</td>
      <td>5.2</td>
    </tr>
    <tr>
      <th>3</th>
      <td>10.6</td>
      <td>-7.8</td>
      <td>5.5</td>
    </tr>
    <tr>
      <th>4</th>
      <td>10.4</td>
      <td>-29.0</td>
      <td>5.0</td>
    </tr>
  </tbody>
</table>
</div>




```python
X = df.drop('c_peptide', axis=1)
y = df.c_peptide
```


```python
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.37, random_state=5762)
```


```python
X_train.shape, y_train.shape, X_test.shape, y_test.shape
```




    ((27, 2), (27,), (16, 2), (16,))




```python
lr = LinearRegression()
```


```python
lr.fit(X_train,y_train)
```




    LinearRegression()




```python
y_pred = lr.predict(X_test)
```


```python
r2_score(y_test, y_pred).round(2)
```




    0.02




```python
mean_absolute_error(y_test,y_pred).round(2)
```




    0.53




```python
mean_squared_error(y_test, y_pred).round(2)
```




    0.44




```python
# Em relação à modelagem utilizando o SVM, marque a alternativa CORRETA sobre a métrica acurácia: 
```


```python
from sklearn.svm import SVC
from sklearn.svm import LinearSVC
from sklearn.metrics import accuracy_score, recall_score, f1_score, roc_auc_score, precision_score, classification_report
from sklearn.model_selection import train_test_split
```


```python
df_cl.head()
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
      <th>V1</th>
      <th>V2</th>
      <th>V3</th>
      <th>V4</th>
      <th>Class</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2</td>
      <td>50</td>
      <td>12500</td>
      <td>98</td>
      <td>2</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0</td>
      <td>13</td>
      <td>3250</td>
      <td>28</td>
      <td>2</td>
    </tr>
    <tr>
      <th>2</th>
      <td>1</td>
      <td>16</td>
      <td>4000</td>
      <td>35</td>
      <td>2</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2</td>
      <td>20</td>
      <td>5000</td>
      <td>45</td>
      <td>2</td>
    </tr>
    <tr>
      <th>4</th>
      <td>1</td>
      <td>24</td>
      <td>6000</td>
      <td>77</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
X = df_cl.drop('Class', axis=1)
y = df_cl.Class
```


```python
X_train, X_test , y_train , y_test = train_test_split(X, y, test_size=0.37, random_state=5762)
```


```python
X_train.shape, y_train.shape, X_test.shape, y_test.shape
```




    ((471, 4), (471,), (277, 4), (277,))




```python
svc = SVC(kernel='rbf')
```


```python
svc.fit(X_train,y_train)
```




    SVC()




```python
y_pred = svc.predict(X_test)
```


```python
# Em relação à modelagem utilizando o SVM, marque a alternativa CORRETA sobre a métrica acurácia: 
accuracy_score(y_test, y_pred).round(2)
```




    0.79




```python
# Em relação à modelagem utilizando o SVM, marque a alternativa CORRETA sobre as métricas precision e recall: 
print(f'O resultado do recall:{recall_score(y_test, y_pred).round(2)}')
print(f'O resultado da Precision:{precision_score(y_test, y_pred).round(2)}')
```

    O resultado do recall:0.98
    O resultado da Precision:0.8
    


```python
print(classification_report(y_test, y_pred))
```

                  precision    recall  f1-score   support
    
               1       0.80      0.98      0.88       218
               2       0.50      0.07      0.12        59
    
        accuracy                           0.79       277
       macro avg       0.65      0.52      0.50       277
    weighted avg       0.73      0.79      0.72       277
    
    


```python
# Em relação à modelagem utilizando o SVM, marque a alternativa CORRETA sobre a métrica f1
f1_score(y_test, y_pred)
```




    0.8788501026694046




```python
# Em relação à modelagem utilizando o SVM, marque a alternativa CORRETA sobre a métrica AUROC:
roc_auc_score(y_test,y_pred).round(2)
```




    0.52




```python
# Em relação à modelagem utilizando o Kmeans, marque a alternativa CORRETA sobre o número de clusters:

```


```python
from sklearn.cluster import KMeans
from sklearn import metrics  
from sklearn.metrics import cluster
from sklearn.model_selection import train_test_split
```


```python
df_cluster.head()
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
      <th>class</th>
      <th>Alcohol</th>
      <th>Malic_acid</th>
      <th>Ash</th>
      <th>Alcalinity_of_ash</th>
      <th>Magnesium</th>
      <th>Total_phenols</th>
      <th>Flavanoids</th>
      <th>Nonflavanoid_phenols</th>
      <th>Proanthocyanins</th>
      <th>Color_intensity</th>
      <th>Hue</th>
      <th>OD280%2FOD315_of_diluted_wines</th>
      <th>Proline</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>14.23</td>
      <td>1.71</td>
      <td>2.43</td>
      <td>15.6</td>
      <td>127</td>
      <td>2.80</td>
      <td>3.06</td>
      <td>0.28</td>
      <td>2.29</td>
      <td>5.64</td>
      <td>1.04</td>
      <td>3.92</td>
      <td>1065</td>
    </tr>
    <tr>
      <th>1</th>
      <td>1</td>
      <td>13.20</td>
      <td>1.78</td>
      <td>2.14</td>
      <td>11.2</td>
      <td>100</td>
      <td>2.65</td>
      <td>2.76</td>
      <td>0.26</td>
      <td>1.28</td>
      <td>4.38</td>
      <td>1.05</td>
      <td>3.40</td>
      <td>1050</td>
    </tr>
    <tr>
      <th>2</th>
      <td>1</td>
      <td>13.16</td>
      <td>2.36</td>
      <td>2.67</td>
      <td>18.6</td>
      <td>101</td>
      <td>2.80</td>
      <td>3.24</td>
      <td>0.30</td>
      <td>2.81</td>
      <td>5.68</td>
      <td>1.03</td>
      <td>3.17</td>
      <td>1185</td>
    </tr>
    <tr>
      <th>3</th>
      <td>1</td>
      <td>14.37</td>
      <td>1.95</td>
      <td>2.50</td>
      <td>16.8</td>
      <td>113</td>
      <td>3.85</td>
      <td>3.49</td>
      <td>0.24</td>
      <td>2.18</td>
      <td>7.80</td>
      <td>0.86</td>
      <td>3.45</td>
      <td>1480</td>
    </tr>
    <tr>
      <th>4</th>
      <td>1</td>
      <td>13.24</td>
      <td>2.59</td>
      <td>2.87</td>
      <td>21.0</td>
      <td>118</td>
      <td>2.80</td>
      <td>2.69</td>
      <td>0.39</td>
      <td>1.82</td>
      <td>4.32</td>
      <td>1.04</td>
      <td>2.93</td>
      <td>735</td>
    </tr>
  </tbody>
</table>
</div>




```python
X = df_cluster.drop('class', axis=1)
y = df_cluster['class']
```


```python
train_data, test_data, train_labels, test_labels = train_test_split(X, y, test_size = 0.37, random_state = 5762)
```


```python
clustering = KMeans(n_clusters = 3, random_state = 5762)
 
```


```python
# treinando o modelo no conjunto de dados de treino
clustering.fit(train_data);
```


```python
predictions = clustering.predict(test_data)
```


```python
p = pd.DataFrame({'Real': test_labels, 'Previsto': predictions})  
p.head(10)
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
      <th>Real</th>
      <th>Previsto</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>141</th>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>129</th>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>101</th>
      <td>2</td>
      <td>2</td>
    </tr>
    <tr>
      <th>95</th>
      <td>2</td>
      <td>0</td>
    </tr>
    <tr>
      <th>175</th>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>20</th>
      <td>1</td>
      <td>0</td>
    </tr>
    <tr>
      <th>174</th>
      <td>3</td>
      <td>0</td>
    </tr>
    <tr>
      <th>59</th>
      <td>2</td>
      <td>2</td>
    </tr>
    <tr>
      <th>79</th>
      <td>2</td>
      <td>2</td>
    </tr>
    <tr>
      <th>92</th>
      <td>2</td>
      <td>2</td>
    </tr>
  </tbody>
</table>
</div>




```python
p.Previsto.value_counts()
```




    0    27
    2    27
    1    12
    Name: Previsto, dtype: int64




```python
p.Real.value_counts()
```




    2    30
    3    19
    1    17
    Name: Real, dtype: int64




```python
# Em relação à modelagem utilizando o Kmeans, marque a alternativa CORRETA sobre a métrica Coeficiente de Silhueta:
# Em relação à modelagem utilizando o Kmeans, marque a alternativa CORRETA sobre a métrica Davies-Bouldin Score: 
# Em relação à modelagem utilizando o Kmeans, marque a alternativa CORRETA sobre a métrica Mutual information: 
```


```python
#avaliando o modelo

print('Coeficiente de Silhueta\n', metrics.silhouette_score(test_data, predictions).round(2)) 
print('\nDavies-Bouldin Score\n', metrics.davies_bouldin_score(test_data, predictions).round(2)) 

print('\nMatriz de Contingência\n', metrics.cluster.contingency_matrix(test_labels, predictions).round(2)) 
print('\nMutual information\n', metrics.mutual_info_score(test_labels, predictions).round(2)) 
```

    Coeficiente de Silhueta
     0.6
    
    Davies-Bouldin Score
     0.5
    
    Matriz de Contingência
     [[ 5 12  0]
     [ 7  0 23]
     [15  0  4]]
    
    Mutual information
     0.49
    
