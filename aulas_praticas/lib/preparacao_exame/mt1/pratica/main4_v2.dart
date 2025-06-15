// 4. Crie uma função que receba cinco números e retorne a média aritmética.
import 'dart:io';
import 'dart:math';


double media_aritmetrica2(double a, double b, double c, double d, double e) {
  double soma = a + b + c + d + e;
  return soma / 5;
}

void main() {
  stdout.write('Número 1: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Número 2: ');
  double b = double.parse(stdin.readLineSync()!);
  stdout.write('Número 3: ');
  double c = double.parse(stdin.readLineSync()!);
  stdout.write('Número 4: ');
  double d = double.parse(stdin.readLineSync()!);
  stdout.write('Número 5: ');
  double e = double.parse(stdin.readLineSync()!);

  double resultado = media_aritmetrica2(a, b, c, d, e);
  print('A média aritmética é: $resultado');
}

double media_aritmetrica1(double a, double b, double c, double d, double e) {
  List<double> numeros = [a, b, c, d, e];
  if (numeros.length != 5) {
    throw ArgumentError('A lista deve conter exatamente cinco números.');
  }
  double soma = numeros.reduce((a, b) => a + b);
  return soma / numeros.length;
}