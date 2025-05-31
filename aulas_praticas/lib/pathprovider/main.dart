import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  final _filename= 'example.txt';

  @override
  Widget build(BuildContext context) {
    Directory documents = await getApplicationDocumentsDirectory();
    File file = File('${documents.path}/$_filename');
    return MaterialApp(
      title: 'Path Provider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Path Provider Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final directory = await getApplicationDocumentsDirectory();
              print('Application Documents Directory: ${directory.path}');
            },
            child: const Text('Get Application Documents Directory'),
          ),
        ),
      ),
    );
  }
}