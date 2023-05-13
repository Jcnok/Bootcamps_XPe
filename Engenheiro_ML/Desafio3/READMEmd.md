# Desafio 3 - Bootcamp IGTI: Engenheiro(a) de Machine Learning

## Objetivos

**Exercitar os seguintes conceitos trabalhados no Módulo:**
* Neste desafio, vamos trabalhar os conceitos vistos sobre métricas de
desempenho, técnicas de validação e sintonia de hiperparâmetros.

* Também vamos olhar para o fluxo completo de seleção de um modelo de
aprendizado.


## Enunciado

**Os alunos deverão desempenhar as seguintes atividades:**
1. Baixar o arquivo com os dados no link https://www.openml.org/d/1480. O formato do arquivo deve ser CSV. 
2. Obter informações relativas ao número de features e amostras. 
3. Verificar a necessidade de tratamento de dados categóricos e valores faltantes. 
4. Mapear a feature V2:
    * a. 'Female': 0,'Male': 1.
5. Modelar o SVC e o Random Forest Classifier, com Random Search para sintonia de hiperparâmetros e validação cruzada estratificada, usando as parametrizações abaixo. 
6. Parametrização SVC:
    * a. Bibliotecas para importação:
        * i. from sklearn.ensemble import RandomForestClassifier
        * ii. from sklearn.svm import SVC
        * iii. from sklearn.model_selection import StratifiedKFold
        * iv. from sklearn.model_selection import RandomizedSearchCV
        * v. from scipy.stats import uniform
        * vi. from scipy.stats import randint
        * vii. from sklearn.metrics import f1_score, make_scorer
    * b. Kfold estratificado com 10 conjuntos. 
    * c. Métrica de avaliação f1:
        * i. f1 = make_scorer(f1_score)
    * d. Parâmetro de kernel:
        * i. Sigmoidal, polinomial e RBF (nessa ordem).
    * e. Parâmetro de regularização C:
        * i. Distribuição uniforme variando entre 1 e 10.
    * f. Random_state = 5762
    * g. Número de iterações = 5. 
7. Avaliar o resultado da modelagem usando as métricas:
    * a. best_score_
    * b. best_params_
    * c. best_estimator_
8. Repetir o processo usando o Random Forest:
    * a. Faça a instanciação do Random Forest fixando o random_state = 5762
        * i. RandomForestClassifier(random_state = 5762)
    * b. Kfold estratificado com 10 conjuntos. 
    * c. Métrica de avaliação f1:
        * i. f1 = make_scorer(f1_score)
    * d. Parâmetro do número de árvores:
        * i. Distribuição aleatória inteira de valores entre 10 e 1000.
    * e. Parâmetro Bootstrap:
        * i. Verdadeiro e Falso.
    * f. Parâmetro Criterion:
        * i. Gini e Entropy.
    * g. Random_state = 5762
    * h. Número de iterações = 5. 
9. Avaliar o resultado da modelagem usando as métricas:
    * a. best_score_
    * b. best_params_
    * c. best_estimator_


```python
# importação das libs.
import pandas as pd 
import numpy as np 
import matplotlib.pyplot as plt 
from sklearn.ensemble import RandomForestClassifier
from sklearn.svm import SVC
from sklearn.model_selection import StratifiedKFold
from sklearn.model_selection import RandomizedSearchCV
from scipy.stats import uniform
from scipy.stats import randint
from sklearn.metrics import f1_score, make_scorer
```


```python
df = pd.read_csv('../data/phpOJxGL9.csv')
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
      <th>V1</th>
      <th>V2</th>
      <th>V3</th>
      <th>V4</th>
      <th>V5</th>
      <th>V6</th>
      <th>V7</th>
      <th>V8</th>
      <th>V9</th>
      <th>V10</th>
      <th>Class</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>65</td>
      <td>Female</td>
      <td>0.7</td>
      <td>0.1</td>
      <td>187</td>
      <td>16</td>
      <td>18</td>
      <td>6.8</td>
      <td>3.3</td>
      <td>0.90</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>62</td>
      <td>Male</td>
      <td>10.9</td>
      <td>5.5</td>
      <td>699</td>
      <td>64</td>
      <td>100</td>
      <td>7.5</td>
      <td>3.2</td>
      <td>0.74</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>62</td>
      <td>Male</td>
      <td>7.3</td>
      <td>4.1</td>
      <td>490</td>
      <td>60</td>
      <td>68</td>
      <td>7.0</td>
      <td>3.3</td>
      <td>0.89</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>58</td>
      <td>Male</td>
      <td>1.0</td>
      <td>0.4</td>
      <td>182</td>
      <td>14</td>
      <td>20</td>
      <td>6.8</td>
      <td>3.4</td>
      <td>1.00</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>72</td>
      <td>Male</td>
      <td>3.9</td>
      <td>2.0</td>
      <td>195</td>
      <td>27</td>
      <td>59</td>
      <td>7.3</td>
      <td>2.4</td>
      <td>0.40</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>




```python
#2. 
df.shape
```




    (583, 11)




```python
#Sem valores faltantes.
df.isnull().sum()
```




    V1       0
    V2       0
    V3       0
    V4       0
    V5       0
    V6       0
    V7       0
    V8       0
    V9       0
    V10      0
    Class    0
    dtype: int64




```python
df.info()
```

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 583 entries, 0 to 582
    Data columns (total 11 columns):
     #   Column  Non-Null Count  Dtype  
    ---  ------  --------------  -----  
     0   V1      583 non-null    int64  
     1   V2      583 non-null    object 
     2   V3      583 non-null    float64
     3   V4      583 non-null    float64
     4   V5      583 non-null    int64  
     5   V6      583 non-null    int64  
     6   V7      583 non-null    int64  
     7   V8      583 non-null    float64
     8   V9      583 non-null    float64
     9   V10     583 non-null    float64
     10  Class   583 non-null    int64  
    dtypes: float64(5), int64(5), object(1)
    memory usage: 50.2+ KB
    


```python
# 4. Mapear a feature V2:a. 'Female': 0,'Male': 1.
v2_class = {'Female':0, 'Male':1}
df['V2'] = df['V2'].map(v2_class)
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
      <th>V1</th>
      <th>V2</th>
      <th>V3</th>
      <th>V4</th>
      <th>V5</th>
      <th>V6</th>
      <th>V7</th>
      <th>V8</th>
      <th>V9</th>
      <th>V10</th>
      <th>Class</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>65</td>
      <td>0</td>
      <td>0.7</td>
      <td>0.1</td>
      <td>187</td>
      <td>16</td>
      <td>18</td>
      <td>6.8</td>
      <td>3.3</td>
      <td>0.90</td>
      <td>1</td>
    </tr>
    <tr>
      <th>1</th>
      <td>62</td>
      <td>1</td>
      <td>10.9</td>
      <td>5.5</td>
      <td>699</td>
      <td>64</td>
      <td>100</td>
      <td>7.5</td>
      <td>3.2</td>
      <td>0.74</td>
      <td>1</td>
    </tr>
    <tr>
      <th>2</th>
      <td>62</td>
      <td>1</td>
      <td>7.3</td>
      <td>4.1</td>
      <td>490</td>
      <td>60</td>
      <td>68</td>
      <td>7.0</td>
      <td>3.3</td>
      <td>0.89</td>
      <td>1</td>
    </tr>
    <tr>
      <th>3</th>
      <td>58</td>
      <td>1</td>
      <td>1.0</td>
      <td>0.4</td>
      <td>182</td>
      <td>14</td>
      <td>20</td>
      <td>6.8</td>
      <td>3.4</td>
      <td>1.00</td>
      <td>1</td>
    </tr>
    <tr>
      <th>4</th>
      <td>72</td>
      <td>1</td>
      <td>3.9</td>
      <td>2.0</td>
      <td>195</td>
      <td>27</td>
      <td>59</td>
      <td>7.3</td>
      <td>2.4</td>
      <td>0.40</td>
      <td>1</td>
    </tr>
  </tbody>
</table>
</div>


'''5. Modelar o SVC e o Random Forest Classifier, com Random Search para sintonia de 
hiperparâmetros e validação cruzada estratificada, usando as parametrizações 
abaixo.'''

6. Parametrização SVC:
a. Bibliotecas para importação:
i. from sklearn.ensemble import RandomForestClassifier
ii. from sklearn.svm import SVC
iii. from sklearn.model_selection import StratifiedKFold
iv. from sklearn.model_selection import RandomizedSearchCV
v. from scipy.stats import uniform
vi. from scipy.stats import randint
vii. from sklearn.metrics import f1_score, make_scorer
b. Kfold estratificado com 10 conjuntos. 
c. Métrica de avaliação f1:
i. f1 = make_scorer(f1_score)
d. Parâmetro de kernel:
i. Sigmoidal, polinomial e RBF (nessa ordem).
e. Parâmetro de regularização C:
i. Distribuição uniforme variando entre 1 e 10.
f. Random_state = 5762
g. Número de iterações = 5. 

```python
X = df.drop('Class',axis=1)
y = df.Class
```


```python
#definindo o tipo de validacao cruzada e o numero de folds
cv_strat = StratifiedKFold(n_splits = 10)

#definindo a estrategia de score a partir da metrica f1
f1 = make_scorer(f1_score)

#definindo hiperparâmetros
distributions = dict(kernel = ['sigmoid','poly', 'rbf'], 
                     C = uniform(loc=1, scale=10))

#instânciando meu classificador
classifier = SVC()

#instanciando e modelando o grid search com os hiperparametros e a validação definidas.
random_cv = RandomizedSearchCV(classifier, distributions, cv = cv_strat, scoring = f1, random_state = 5762, n_iter = 5)
random_cv.fit(X, y)
```




    RandomizedSearchCV(cv=StratifiedKFold(n_splits=10, random_state=None, shuffle=False),
                       estimator=SVC(), n_iter=5,
                       param_distributions={'C': <scipy.stats._distn_infrastructure.rv_frozen object at 0x00000203CE73F070>,
                                            'kernel': ['sigmoid', 'poly', 'rbf']},
                       random_state=5762, scoring=make_scorer(f1_score))




```python
#vamos olhar para os melhores resultados encontrados pelo Grid Search
print('Melhor resultado f1:', random_cv.best_score_)
print('\n\nMelhor configuração de hiperparâmetros:', random_cv.best_params_)
print( '\n\nConfigurações de todos os hiperparâmetros do melhor estimado encontrado pelo GridSearch: \n', random_cv.best_estimator_)
```

    Melhor resultado f1: 0.832818081808181
    
    
    Melhor configuração de hiperparâmetros: {'C': 3.996689355015553, 'kernel': 'poly'}
    
    
    Configurações de todos os hiperparâmetros do melhor estimado encontrado pelo GridSearch: 
     SVC(C=3.996689355015553, kernel='poly')
    


```python

```
8. Repetir o processo usando o Random Forest:
a. Faça a instanciação do Random Forest fixando o random_state = 5762
i. RandomForestClassifier(random_state = 5762)
b. Kfold estratificado com 10 conjuntos. 
c. Métrica de avaliação f1:
i. f1 = make_scorer(f1_score)
d. Parâmetro do número de árvores:
i. Distribuição aleatória inteira de valores entre 10 e 1000.
e. Parâmetro Bootstrap:
i. Verdadeiro e Falso.
f. Parâmetro Criterion:
i. Gini e Entropy.
g. Random_state = 5762
h. Número de iterações = 5.

```python
#definindo o tipo de validacao cruzada e o numero de folds
cv_strat = StratifiedKFold(n_splits = 10)

#definindo a estrategia de score a partir da metrica f1
f1 = make_scorer(f1_score)

#definindo hiperparâmetros
distributions1 = dict(n_estimators = randint(10, 1000),
                      bootstrap = [True, False],
                      criterion = ['gini', 'entropy'])

#instânciando meu classificador
classifier1 = RandomForestClassifier(random_state = 5762)

#instanciando e modelando o grid search com os hiperparametros e a validação definidas.
random_cv1 = RandomizedSearchCV(classifier1, distributions1, cv = cv_strat, scoring = f1, random_state = 5762, n_iter = 5)
random_cv1.fit(X, y)
```




    RandomizedSearchCV(cv=StratifiedKFold(n_splits=10, random_state=None, shuffle=False),
                       estimator=RandomForestClassifier(random_state=5762),
                       n_iter=5,
                       param_distributions={'bootstrap': [True, False],
                                            'criterion': ['gini', 'entropy'],
                                            'n_estimators': <scipy.stats._distn_infrastructure.rv_frozen object at 0x0000020479C3E160>},
                       random_state=5762, scoring=make_scorer(f1_score))


9. Avaliar o resultado da modelagem usando as métricas:
a. best_score_
b. best_params_
c. best_estimator

```python
#vamos olhar para os melhores resultados encontrados pelo Grid Search
print('Melhor resultado f1:', random_cv1.best_score_)
print('\n\nMelhor configuração de hiperparâmetros:', random_cv1.best_params_)
print( '\n\nConfigurações de todos os hiperparâmetros do melhor estimado encontrado pelo GridSearch: \n', random_cv1.best_estimator_)
```

    Melhor resultado f1: 0.7984322518413547
    
    
    Melhor configuração de hiperparâmetros: {'bootstrap': True, 'criterion': 'gini', 'n_estimators': 488}
    
    
    Configurações de todos os hiperparâmetros do melhor estimado encontrado pelo GridSearch: 
     RandomForestClassifier(n_estimators=488, random_state=5762)
    
