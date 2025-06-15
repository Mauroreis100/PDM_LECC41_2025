/*
Crie uma classe Normal, que herda Bilhete e possui um método que imprime: "Bilhete
Normal"
 */
import 'bilhete.dart';
class Normal extends Bilhete {
  Normal(double valor) : super(valor);

  @override
  void imprimeValor() {
    print('Bilhete Normal');
    super.imprimeValor();
  }
}