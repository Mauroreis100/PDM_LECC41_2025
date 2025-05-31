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
        home:Scaffold(
          appBar: AppBar(
            //centerTitle: true,
            title: const Text(
              "Login",
              style: TextStyle(
                  color: Colors.black
              ),
            ),
            //backgroundColor: Colors.blue,

          ),
          body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1
                        )
                      )
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email'
                        )
                      ),
                    // Text("Username")
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1
                        )
                      )
                    ),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: 'Password'
                      ),
                    ),

                  ),
                  ElevatedButton(
                      onPressed: (){
                        print("Pressed");
                      },
                
                      child: Text("Entrar")
                  ),
                   ElevatedButton(
                      onPressed: (){
                        print("Pressed");
                      },
                    
                      child: Text("Criar conta")
                  )
                ],
              ),

            )

        )
    );
  }
}