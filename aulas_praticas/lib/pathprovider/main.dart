import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';


void main() async{
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  final _filename= 'example.txt';

  Future<File> _getFile() async {
    final documents = await getApplicationDocumentsDirectory();
    return File('${documents.path}/$_filename');
  }

  @override
  Widget build(BuildContext context) {
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