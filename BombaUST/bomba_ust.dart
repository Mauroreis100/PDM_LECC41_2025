import 'dart:io';
import 'dart:math';
double gasoleo_litro=91.23;
double gasolina_litro=86.25;

void main() {



  int escolha;

  do {
    print('Quanto é que pretende abastecer?\n0 - Para sair do programa');
    double litro = double.parse(stdin.readLineSync()!);
    String mensagem="DIGITE O Liquído que pretende abastecer?\n1. Gasóleo\n2. Gasolina";
    print(mensagem);
    escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case 1:
        print(gasoleo(litro));
        break;
      case 2:
     print(gasolina(litro));
        break;

        break;
      default:
      //print(votos);
    }

  }while (escolha < 5);

}

double gasolina(double litros){
if(litros<=20){
  return litros*gasolina_litro*(1-0.04);
}else{
  return litros*gasolina_litro*(1-0.06);
}
}

double gasoleo(double litros){
  if(litros<=20){
    return litros*gasoleo_litro*(1-0.03);
  }else{
    return litros*gasoleo_litro*(1-0.05);
  }
}