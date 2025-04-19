import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized(); 
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  var size,height,width,orientation;
orientation = MediaQuery.of(context).orientation;
  size = MediaQuery.of(context).size; 
    height = size.height;
    width = size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flex and MediaQuery'), backgroundColor: Colors.lightGreen,),



        body: orientation == Orientation.portrait?Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(flex:6,
              child: 
              Container(padding: EdgeInsets.all(10), color: Colors.black, child: Text("Flex 6",style: TextStyle(color: Colors.white), textAlign: TextAlign.center)),
              ),
              Expanded(flex:3,
              child: 
              Container(padding: EdgeInsets.all(10), color: Colors.red, child: Text("Flex 3",style: TextStyle(color: Colors.white), textAlign: TextAlign.center)),
              ),
              Container(height: height/2,padding: EdgeInsets.all(10), color: Colors.green, child: Text("Query Height,",style: TextStyle(color: Colors.white), textAlign: TextAlign.center)),
             ],
          ),
        )
        :Container(
        height: height,
        width: width,
        color: const Color.fromARGB(255, 6, 60, 77),
        child: Text(
          "Phone has been rotated to landscape",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      ),
    );
  }
}
