import 'package:flutter/material.dart';
// Mauro Mahassa -  LECC41 - 2025
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final List<String> jogadores = [
    '1. Lamine Yamal',
    '2. Rober Lewandowski',
    '3. Dani Almo',
    '4. Alejandre Balde',
    '5. Frenkie de Jong',
    '6. Gavi',
    '7. Pedri',
    '8. Marc Casado',
    '9. Marc-André ter Stegen',
    '10. Sschesniy - Guarda-redes',
    '11. Jules Koundé',
    '12.Andreas Christensen',
    '13. Eric Garcia',
    '14. Jordi Alba',
    '15. Sergio Busquets',
  ];
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogadores do FC Barcelona',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jogadores do FC Barcelona'),
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          
          itemCount: jogadores.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                jogadores[index],
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
