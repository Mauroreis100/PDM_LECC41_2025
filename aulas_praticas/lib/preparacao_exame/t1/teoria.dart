/*
https://bit.ly/zindi-ambassador-referral-Euclides
1- Explique a diferença entre var, final e cons(10 pontos)
R:
•A palavra reservada final é usada para declarar uma variável que não pode ser
alterada depois de ser atribuída um valor, ou seja, é imutável.
•A palavra reservada const é usada para declarar uma variável que é uma constante 
em tempo de compilação,
ou seja, o valor é conhecido em tempo de compilação e não pode ser alterado.
•A palavra reservada var é usada para declarar uma variável que pode ser alterada 
durante a execução do programa,
ou seja, é mutável. 
•Há uma palavra reservada var que depois da atribuição do valor a variável, 
o tipo atribuido não pode ser alterado durante a execução, no entanto, 
os valores continuam a ser mutáveis.

2- O que são tipos dinâmicos (dynamic) em Dart?(10 pontos)
R: O dart possui um tipo especial chamado de dynamic o 
mesmo pode ser de qualquer valor. Mas é aconselhado não usar. 
O tipo de dado pode alterar durante a execução.

3- Ao criar um projecto flutter, várias pastas e ficheiros são criadas de forma automatizada,
determine a relação entre os ficheiros pubspec.yaml, build.gradle e Podfile? (10 pontos)
R:
O ficheiro pubspec.yaml é usado para gerenciar as dependências do projeto Flutter,
o build.gradle é usado para gerenciar as dependências do projeto Android,
e o Podfile é usado para gerenciar as dependências do projeto iOS.
// Essas dependências são usadas para compilar o projeto e garantir que todas as bibliotecas necessárias estejam disponíveis.

4- Indica os tipos de Exception que conheces em dart e descreve cada um deles. (20 pontos)
R:
•FormatException: Ocorre quando uma string não pode ser convertida para um tipo numérico.
•NullThrownError: Ocorre quando uma variável nula é acessada.
•RangeError: Ocorre quando um valor está fora do intervalo esperado.
•TypeError: Ocorre quando um valor é de um tipo diferente do esperado.
// Essas exceções são usadas para tratar erros que ocorrem durante a execução do programa.

5- O que é o Null Safety em Dart? (10 pontos)
R: O Null Safety é um recurso do Dart que permite que os desenvolvedores
escrevam código mais seguro, evitando erros relacionados a valores nulos.
Ele permite que os desenvolvedores especifiquem se uma variável pode ou não ser nula,
e o compilador verifica se o código está acessando variáveis nulas de forma segura.
 */