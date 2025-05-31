import 'dart:io';
  
void main() {
stdout.write("Qual é o seu nome? ");
String? nome = stdin.readLineSync();
print("Gerando resposta...");
  userName(nome!);
  
}

Future<String> userName(String nome) async {
  await Future.delayed(Duration(seconds: 2));
  return "$nome";
}