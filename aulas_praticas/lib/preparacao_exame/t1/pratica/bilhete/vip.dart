/*
Crie uma classe VIP, que herda Bilhete e possui um valor adicional. Crie um método
que retorne o valor do Bilhete VIP (com o adicional incluído)
 */
import 'bilhete.dart';
class VIP extends Bilhete {
  double valorAdicional;

  VIP(double valor, this.valorAdicional) : super(valor);

  double getValorVIP() {
    return valor + valorAdicional;
  }

  @override
  void imprimeValor() {
    print('O valor do bilhete VIP é: ${getValorVIP().toStringAsFixed(2)} MT');
  }
}