/*
Escreva um programa em dart que, dados dois valores lidos pelo teclado permita distinguir
se dois valores são opostos ou inversos. Os dois valores devem ser diferentes de Zero (0).
Caso os valores digitados sejam inválidos, exiba uma mensagem de erro e conceda até
duas novas chances para o utilizador inserir os valores correctos. Se, após as três
tentativas, os valores ainda forem inválidos, finalize o programa com uma mensagem de
encerramento.
 */

import 'dart:io';
void main() {
  int attempts = 0;
  const maxAttempts = 3;

  while (attempts < maxAttempts) {
    try {
      stdout.write('Digite o primeiro valor: ');
      double firstValue = double.parse(stdin.readLineSync()!);

      stdout.write('Digite o segundo valor: ');
      double secondValue = double.parse(stdin.readLineSync()!);

      if (firstValue == 0 || secondValue == 0) {
        throw FormatException('Os valores não podem ser zero.');
      }

      if (firstValue == -secondValue) {
        print('Os valores são opostos.');
      } else if (firstValue * secondValue == 1) {
        print('Os valores são inversos.');
      } else {
        print('Os valores não são opostos nem inversos.');
      }
      break; // Exit loop if successful
    } catch (e) {
      attempts++;
      print('Erro: ${e.toString()}');
      if (attempts < maxAttempts) {
        print('Tente novamente. Tentativa ${attempts + 1} de $maxAttempts.');
      } else {
        print('Número máximo de tentativas atingido. Encerrando o programa.');
      }
    }
  }
}