import 'imovel.dart';
class Velho extends Imovel{
double desconto;

Velho(String endereco, double preco, this.desconto) : super(endereco, preco);

double getDesconto(){
return preco*desconto/100;
}

void imprimirDesconto(){
print(getDesconto);
}

}