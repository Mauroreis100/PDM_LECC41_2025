import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Rows and Columns')),
        body: Center(

  child: Container(
    color: Colors.white,
    width: 340,
    height: 300,
    child: Column(
      children: [
        Container(
          height: 160,
          width: double.infinity,
          child: Image.network(
                  'https://art.pixilart.com/0ab6803c6cd228e.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Super Mario Bros.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text("Let's-a GO!")
                  ],
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("4.5"),
                    Icon(
                      Icons.star,
                      size: 14,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: Text("Botão"),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Botão"),
                onPressed: () {},
              ),
               ElevatedButton(
                child: Text("Botão"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    ),
  ),

        ), //Body - Center
      ),
    );
  }
}
