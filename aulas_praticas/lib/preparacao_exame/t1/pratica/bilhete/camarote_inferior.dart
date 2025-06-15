/*
Crie uma classe CamaroteInferior (que possui a localização do Bilhete e métodos
para acessar e imprimir esta localização) 
Ambas as classes herdam a classe VIP.
*/
import 'vip.dart';
class CamaroteInferior extends VIP {
  String localizacao;

  CamaroteInferior(double valor, double valorAdicional, this.localizacao)
      : super(valor, valorAdicional);

  String getLocalizacao() {
    return localizacao;
  }

  void imprimeLocalizacao() {
    print('A localização do bilhete VIP Camarote Inferior é: $localizacao');
  }

  @override
  void imprimeValor() {
    super.imprimeValor();
    imprimeLocalizacao();
  }
}