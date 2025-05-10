// Criar uma simulação de busca com erro de um produto
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/services/asset_bundle.dart';
void main() async {
  print("Buscando produto...");
 try {

    await Future.delayed(Duration(seconds: 2), () async {
      String data = await rootBundle.loadString('assets/produto.txt');
      debugPrint(data);
      throw Exception("Produto não encontrado");
    });
  } catch (e) {
    print(e.toString());
  } finally {
    print("Finalizando busca...");
  } 
}