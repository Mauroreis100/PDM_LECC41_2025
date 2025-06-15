/*Crie uma tela simples que mostra uma mensagem*/
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LECC41', style: TextStyle(color: Colors.black)),
           backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Container(child: Text("Turma de PDM 2025"))],
          ),
        ),
      ),
    );
  }
}

