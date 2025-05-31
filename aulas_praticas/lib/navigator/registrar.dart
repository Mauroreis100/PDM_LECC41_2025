import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

int selectedOption = 1;
String? gender;

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_rounded),
          ),
          title: const Text("Registrar", style: TextStyle(color: Colors.black)),

          //backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                // Text("Username")
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                child: Text("Gênero"),
              ),
              ListTile(
                title: const Text('Masculino'),
                leading: Radio<int>(
                  value: selectedOption,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Femenino'),
                leading: Radio<int>(
                  value: 0,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                      print("Button value: $value");
                    });
                  },
                ),
              ),

              RadioListTile<String>(
                title: const Text("A"),
                value: 'Masculino',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("B"),
                value: 'Femenino',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
              //RADIOBUTTONS
              /*
              ListTile(
          title: const Text('Chef'),
          leading: Radio<Character>(
            value: Character.chef,
            groupValue: _character,
            onChanged: setCharacter,
          ),
        ),
        ListTile(
          title: const Text('Firefighter'),
          leading: Radio<Character>(
            value: Character.firefighter,
            groupValue: _character,
            onChanged: setCharacter,
          ),
        ),*/
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),

                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(labelText: 'Senha'),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Idade'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, 'welcome',)
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Text("Registrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
