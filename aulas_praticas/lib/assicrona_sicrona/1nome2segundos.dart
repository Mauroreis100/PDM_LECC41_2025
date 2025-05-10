// Criar uma função assíncrona que retorna o nome do usuário após 2 segundos
void main() async{
  //Implementação 1
String nome=await userName();
print(nome);

//Implementação 2
// Aguarda 2 segundos
print("Agora espere 2 segundos para confirmar o seu nome again");
  Future.delayed(Duration(seconds: 5), () {
    print("O seu nome é Mauro");
    print("Aguardei 2 segundos");
  });
}

Future<String> userName() async {
  await Future.delayed(Duration(seconds: 2));
  return "Mauro Mahassa 2";
}