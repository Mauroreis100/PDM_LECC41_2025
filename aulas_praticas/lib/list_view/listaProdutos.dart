import 'package:flutter/material.dart';

class ListaProduto extends StatelessWidget {
  final List<String> produtos = [
    'Banana',
    'Cebola',
    'Batata',
    'Tomate',
    'Laranja',
  ];

  final List<String> descricoes = [
    'Fruta de Banana, semelhante amarela e oblonga, de casca espessa, polpa mole e doce.',
    'Utiliza como forte em fibras, vitaminas e minerais',
    'Rica em vitamina C, previne e trata doenças como anemia e diabetes',
    'Rica em vitamina C, o potássio, o genérico e rico em niacina',
    'Rica em vitamina C e complexo B, energético e rico em niacina',
  ];

  final List<String> imagens = [
    'lib/list_view/assets/banana.png',
    'lib/list_view/assets/onion.png',
    'lib/list_view/assets/orange.png',
    'lib/list_view/assets/tomato.png',
    'lib/list_view/assets/potato.png', // Corrigido aqui também!
  ];

  ListaProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Produtos'),
      ),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              imagens[index],
              width: 60,
              height: 60,
              fit: BoxFit.fill,
              ), 
            
            title: Text(
              produtos[index],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              descricoes[index],
              style: TextStyle(fontSize: 14),
            ),
          );
        },
      ),
    );
  }
}
