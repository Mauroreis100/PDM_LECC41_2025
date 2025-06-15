/*
CamaroteSuperior, que é mais
cara (possui valor adicional). Esta última possui um método para retornar o valor do
Bilhete. Ambas as classes herdam a classe VIP.
*/
import 'vip.dart';
class CamaroteSuperior extends VIP {
  double valorAdicional;

  CamaroteSuperior(double valor, this.valorAdicional) : super(valor, valorAdicional);

  double getValorCamaroteSuperior() {
    return valor + valorAdicional;
  }

  @override
  void imprimeValor() {
    print('O valor do bilhete VIP Camarote Superior é: ${getValorCamaroteSuperior().toStringAsFixed(2)} MT');
  }
}