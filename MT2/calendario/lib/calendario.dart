import 'package:flutter/material.dart';
// Mauro Mahassa -  LECC41 - 2025
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final List<String> meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendario',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calendario da LECC 41'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 50,
              crossAxisSpacing: 10,
            ),
            itemCount: meses.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 50,
                  width: 50,
                  color: Color.fromARGB(150, index+150, index+210, index+30),
                alignment: Alignment.center,
                  child: Text(meses[index].toString()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
