import 'dart:io';

void main() {
  print('hello world');
  stdout.write('Enter your name : ');
  var name = stdin.readLineSync();
  stdout.write("Written Name is : $name");
}