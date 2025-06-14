// 4. Crie uma função que receba cinco números e retorne a média aritmética.
import 'dart:io';
import 'dart:math';

double media_aritmetrica(List<double> numeros) {
  if (numeros.length != 5) {
    throw ArgumentError('A lista deve conter exatamente cinco números.');
  }
  double soma = numeros.reduce((a, b) => a + b);
  return soma / numeros.length;
}

void main() {
  List<double> numeros = [];
  print('Digite cinco números:');
  
  for (int i = 0; i < 5; i++) {
    stdout.write('Número ${i + 1}: ');
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        double numero = double.parse(input);
        numeros.add(numero);
      } catch (e) {
        print('Entrada inválida. Por favor, digite um número válido.');
        i--; // Decrementa o contador para repetir a entrada
      }
    }
  }

  double resultado = media_aritmetrica(numeros);
  print('A média aritmética é: $resultado');
}