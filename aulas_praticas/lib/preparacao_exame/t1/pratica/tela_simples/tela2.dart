import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
      var size,height,width;
  size = MediaQuery.of(context).size; 
    height = size.height;
    width = size.width;
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Color Boxes'),
           backgroundColor: Colors.purple,
        ),
        body:
        Center(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: width/3,
              height: height,
              color: Colors.red,
              child: Text(
                'Vermelho',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            
              Container(
              alignment: Alignment.center,
              width: width/3,
              height: height,
              color: Colors.green,
              child: Text(
                'Verde',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
               Container(
                alignment: Alignment.center,
              width: width/3,
              height: height,
              color: Colors.blue,
              child: Text(
                'Azul',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ],),
        ),
      )
    );
  }
}