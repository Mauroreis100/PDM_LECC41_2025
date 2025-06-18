/*
Crie uma tela que contenha uma lista com 15 itens. Otitulo da tela deve ser usado como tema para preencher cada item da lista. Otema escolhido será o título exibido no AppBar
da aplicação. Cada linha da lista deve conter o título da tela, o número do item e um ícone que represente o tema escolhido.
 */
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final Map <String,String> aliens = {
'Heatblast':'https://static.wikia.nocookie.net/ben10/images/2/20/Heatblast_omniverse_official.png',
    'Diamondhead':'https://static.wikia.nocookie.net/ben10/images/a/ab/Diamondhead_os.png/revision/latest?cb=20210220164254',
    'XLR8':'https://static.wikia.nocookie.net/ben10/images/8/85/XLR8.png/revision/latest/scale-to-width-down/1000?cb=20170401222738',
    'Fourarms':'https://static.wikia.nocookie.net/ben10/images/d/d0/Four_arms_os_render.png/revision/latest?cb=20141129030943',
    'Wildvine':'https://static.wikia.nocookie.net/ben10/images/6/61/Wildvine_Flors_Verdance.png/revision/latest?cb=20210314021751',
    'Upgrade':'https://static.wikia.nocookie.net/ben10/images/6/62/Upgrade_Model.png/revision/latest?cb=20200511092500',
    'Ghostfreak':'https://static.wikia.nocookie.net/ben10/images/a/a3/GhostfreakPose2.png/revision/latest?cb=20210313173053',
    'Cannonbolt':'https://static.wikia.nocookie.net/ben10/images/1/15/Cannonbolt.png/revision/latest/scale-to-width-down/1000?cb=20210314014123',
    'Stinkfly':'https://static.wikia.nocookie.net/ben10/images/4/4d/Stinkfly_os_render.png/revision/latest?cb=20141129032451',
    'Ripjaws':'https://static.wikia.nocookie.net/ben10/images/9/98/Ripjaws.png/revision/latest?cb=20210314020024',
    'Grey Matter':'https://static.wikia.nocookie.net/ben10/images/1/1d/Grey_matter_profile.png/revision/latest?cb=20210318140808',
    'Humungousaur':'https://static.wikia.nocookie.net/ben10/images/f/fa/Humungousaur_UAF_Model.png/revision/latest?cb=20190731071035',
    'Echo-Echo':'https://static.wikia.nocookie.net/ben10/images/c/c8/EEAFT.png/revision/latest/scale-to-width-down/1000?cb=20171022040816',
    'Bloxx':'https://static.wikia.nocookie.net/ben10/images/5/5b/Bloxx.png/revision/latest/scale-to-width-down/1000?cb=20230814040045',
    'Swampfire':'https://static.wikia.nocookie.net/ben10/images/d/d0/Swampfire_uaf_official.png/revision/latest?cb=20250520080341'
  };
// Tentar eventualmente fazer um para que cada alien tenha uma descrição, e que ela apareça ao clicar no alien. E que possa
// só aparecer se conseguiu conectar com a internet, ou se já tiver sido carregada antes.

// Ver como colocar em um outro sítio e depois mandar para a view e depois mandar para o main
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ben 10 Aliens',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ben 10 Aliens'),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          
          itemCount: aliens.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
              aliens.values.elementAt(index),
             scale: 1.0,
              
              fit: BoxFit.fill,
              ),
              title: Text(
                aliens.keys.elementAt(index),
                style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.green,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}