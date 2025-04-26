
import 'package:flutter/material.dart';
import 'package:aulas_praticas/grid_view/models/list_tile_items.dart';
import 'package:aulas_praticas/grid_view/models/list_data_items.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});
  //Instanciamos a lista de items
  final ListDataItems items = ListDataItems();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //indicamos a direcção do scroll, o número máximo de items
      scrollDirection: Axis.horizontal,
      itemCount: items.meses.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 120,
              //Criamos um ListTile, que ao ser clicado mostra uma mensagem de 2 segundos
              child: ListTile(
                title: Text(items.meses[index]),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 2, milliseconds: 5),
                      content: Text(
                        'Selecionado ${items.meses[index]}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(width: 10.0),
          ],
        );
      },
    );
  }
}
