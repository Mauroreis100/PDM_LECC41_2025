import 'dart:io';
import 'dart:math';

void main(){
  //read number from user
  print('Enter x');
  var x = double.parse(stdin.readLineSync()!);

  print('Enter y');
  var y = double.parse(stdin.readLineSync()!);

  print('Enter z');
  var z = double.parse(stdin.readLineSync()!);

  var geometrica = pow((x+y+z),(1/3));

  print('a. Geométrica n\(x+y+z)^(1/3) = $geometrica');

  var ponderada=(x+2*y+3*z)/6;
  print('b. Ponderada n\(x+2y+3z)/(6) = $ponderada');

  if(x==0 || y==0 || z==0){
    print("Não podemos computar a operação 1/((1/x)+(1/y)+(1/z)), números abaixo de 0!");
  }else{
    var harmonica=1/((1/x)+(1/y)+(1/z));
    print('c. harmonica n\1/((1/x)+(1/y)+(1/z)) = $harmonica');
  }
  var aritmetrica=(x+y+z)/3;
  print('d. aritmetrica n\(x+y+z)/3 = $aritmetrica');


}