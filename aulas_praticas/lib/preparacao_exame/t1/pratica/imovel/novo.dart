import 'imovel.dart';
class Novo extends Imovel{
double valorAdicional;

Novo(String endereco, double preco, this.valorAdicional) : super(endereco,preco);

double getValorAdicional(){
return valorAdicional;
}

void imprimirAdicional(){
print(valorAdicional);
}

}