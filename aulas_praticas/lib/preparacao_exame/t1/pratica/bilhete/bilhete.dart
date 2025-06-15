/*
Crie uma classe chamada Bilhete que possui um valor em meticais e um método
imprimeValor().
 */

class Bilhete {
  double valor;

  Bilhete(this.valor);

  void imprimeValor() {
    print('O valor do bilhete é: ${valor.toStringAsFixed(2)} MT');
  }
}