import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// This is a simple Flutter application that displays three colored boxes in a row.
// The boxes are red, amber, and cyan, with different heights.
// The application uses the MaterialApp and Scaffold widgets to create a basic app structure.
// The Row widget is used to arrange the boxes horizontally, and SizedBox widgets are used to add spacing between them.
// The main function is the entry point of the application, and it calls runApp to start the app.
// The MyApp class is a stateless widget that builds the app's UI.
// The app bar displays the title 'Color Boxes'.
// The body of the app contains a Center widget that centers its child, which is a Row widget.
// The Row widget contains three Container widgets, each representing a colored box.
// The first box is red, the second box is amber (with a height of 150), and the third box is cyan.
// Each box has a width of 100, and there are SizedBox widgets between them to create spacing.
// The app is designed to be simple and demonstrates the use of basic Flutter widgets for layout and styling.

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Exemplo 1'),
        ),
        body:
        Center(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 150,
              color: Colors.amber,
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.cyan,
            ),
            SizedBox(
              width: 20,
            )
          ],),
        ),
      )
    );
  }
}