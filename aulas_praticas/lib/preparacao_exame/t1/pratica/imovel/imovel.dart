class Imovel {
  String endereco;
  double preco;

  Imovel(this.endereco, this.preco);

  void imprimirValor() {
    print(preco.toStringAsFixed(2) + " MT");
  }
}
