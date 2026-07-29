import 'dart:io';

void main() {
  // print('hello world');
  // stdout.write('Enter your name : ');
  // var name = stdin.readLineSync();
  // stdout.write("Written Name is : $name");


  // var raman = new Human();
  // var ramana = Human();

  // print("$raman  ,$ramana");

  //declaration of a variable 
  // int? a ; //here ? means this value may be null
  int a ;
  // assign value
  a = 7; // initailiasation
  print(a);

//inline declaration
  int b = 24;

  print(b);

  BigInt c = BigInt.parse(('12345878787555555555'));

  print(c);

  double percentage = 99.26;

  print(percentage);

  num val = 0.12;

  print(val);

  bool isLoggedIn = false;

  print(isLoggedIn);
}


class Human {
  Human();
}