// Simular o carregamento de um arquivo em 3 passos, cada um com delay de 1 segundo
void main() async {
  print("Fetching your file...");
  await Future.delayed(Duration(seconds: 2), () {
    print("Loading your file...");
  });
  await Future.delayed(Duration(seconds: 2), () {
    print("Your file has been found!");
  });
  await Future.delayed(Duration(seconds: 2), () {
    print("Rendering your file...50%");
  });
  await Future.delayed(Duration(seconds: 1), () {
    print("Hello! (•‿•)");
  });
}


//O que se coloca para ter a renderização de telas.
// Não precisas de colocar async no main. Define a prioridade da pilha de eventos
void carregamento() async{
  await Future.delayed(Duration(seconds: 2), () {
    print("Loading your file...");
  });
}