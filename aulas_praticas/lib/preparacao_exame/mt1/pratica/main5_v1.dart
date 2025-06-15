/* Crie uma interface Animal que defina um método emitirSom(). Em seguida, implemente
duas classes (Cachorro e Gato) que apresentem o comportamento específico de cada animal.
*/

import 'dart:io';

abstract class Animal { // Rever se interface é feito desta forma
  void emitirSom();
}
class Cachorro implements Animal {
  @override
  void emitirSom() {
    print('Woof Woof!');
  }
}
class Gato implements Animal {
  @override
  void emitirSom() {
    print('Miau!');
  }
}
void main() {
  Cachorro cachorro = Cachorro();
  Gato gato = Gato();
    stdout.write('Digite o tipo de animal (cachorro/gato): ');
    String tipo = stdin.readLineSync()!.toLowerCase();
    
    if (tipo == 'cachorro') {
      cachorro.emitirSom();
    } else if (tipo == 'gato') {
      gato.emitirSom();
    } else {
      print('Tipo de animal inválido. Por favor, digite "cachorro" ou "gato".');
     
    }
  }

