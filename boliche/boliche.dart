/*
* As máquinas de boliche dispõem os pinos de forma automática
da seguinte forma: fila 1 = 1 pino; fila 2 = 2 pinos; fila 3 = 3 pinos e
fila 4 = 4 pinos, ou seja, trabalha com 10 pinos. Porém, um novo
fabricante decide inovar e permitir que o jogador escolha até 28
pinos para jogar, e você foi contratado para criar um programa dart
que automatizará o processo de disposição dos pinos. Seu
programa, além de organizar a disposição dos pinos, tem de validar
a quantidade de pinos escolhida pelo jogador, pois números
menores que 0 e maiores que 28 não são permitidos. Outro cuidado
que você deve tomar é se o usuário escolher uma quantidade que
não seja suficiente para fechar uma fila, por exemplo, se escolher
12 pinos, serão utilizados 10 dispostos em 4 filas e sobrarão 2 pinos.
Nesse caso, você deverá exibir uma mensagem dizendo que 2 pinos
não puderam ser enfileirados.
* */
import 'dart:io';
void main(){
  //print("Insira o número de pinos que a máquina deve dispensar");
  var pinos;
  stdout.write("Insira o nº de pinos que pretende dispensar:");
  pinos = stdin.readLineSync();
  int numPinos = int.parse(pinos);
  dispensor_pinos2(numPinos);
}
void dispensor_pinos2(int numeroPinos){ // Nos paratmetros temos ? para dizer que pode imprimir valores nulos
final List<int> filas=[0,1,2,3,4,5,6,7];
  if(numeroPinos>0 && numeroPinos<=28){
    var controlador=0;
    var fila=0;
    for(int f=0;f<=filas.length-1;f++){
      //(numeroPinos-filas[f])>0 ? print("*"*filas[f]) : print("");
      controlador=controlador+filas[f+1];
      print(" * "*(filas[f+1]));
      if(controlador>=numeroPinos){
        print((-(numeroPinos-controlador)).toString()
            +' pinos não puderam ser enfileirados');
        break;
      }
    }

  }

}
void dispensor_pinos(int numeroPinos){ // Nos paratmetros temos ? para dizer que pode imprimir valores nulos

  while(numeroPinos>0 && numeroPinos<=28){
    for(int i=1;i<=numeroPinos;i++){
      int j=i;
      stdout.write(" "*numeroPinos);
      while(j>0){
        stdout.write("  * ");
        j--;
        numeroPinos--;
      }
      print(" ");

    }
 }

}