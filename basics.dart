import 'dart:io';

void main() {
  // print('hello world');
  // stdout.write('Enter your name : ');
  // var name = stdin.readLineSync();
  // stdout.write("Written Name is : $name");


  // var raman = new Human();
  // var ramana = Human();

  // print("$raman  ,$ramana");

//   //declaration of a variable 
//   // int? a ; //here ? means this value may be null
//   int a ;
//   // assign value
//   a = 7; // initailiasation
//   print(a);

// //inline declaration
//   int b = 24;

//   print(b);

//   BigInt c = BigInt.parse(('12345878787555555555'));

//   print(c);

//   double percentage = 99.26;

//   print(percentage);

//   num val = 0.12;

//   print(val);

//   bool isLoggedIn = false;

//   print(isLoggedIn);

//   String name = 'Raman';

//   var anotherName = 'Sudhir';

//   // name = 123; //show error 
//   // anotherName = 123; // show error 

// var data ;
// data = 123;
// data = 'sudhir';
// data = false ;// dynamic value .

//   print("$name , $anotherName");

  // var raman = new Human();
  // raman.printName();
  // raman.callingName('raman','ramu');
  // raman.callingName('raman','rasu');

  var listNum = [12,34,45,67];
  listNum.add(23);

  var listNum2 = [1,2,3,4,5];

  var listNum3 = [];
  listNum3.add(1);
  listNum3.add(2);
  listNum3.add(3);
  listNum3.add(4);

  // listNum3.addAll(listNum2);

  // listNum3.insert(2, 15);
  // listNum3.insertAll(4,listNum2);
  
  // listNum3[0] = 0;

  // listNum3.replaceRange(0,3,[11,12,13,14,15]);
  // listNum3.replaceRange(0,1,[11,12,13,14,15]);

  // listNum3.removeLast();
  // listNum3.removeAt(2);
  // listNum3.remove(1);
  // listNum3.removeRange(0,2); // remove range not contains last value.

  // print("$listNum , $listNum2 ,$listNum3");

  // print(listNum3.length);
  // print(listNum3.reversed);
  // print(listNum3.first);
  // print(listNum3.last);
  // print(listNum3.isEmpty);
  // print(listNum3.isNotEmpty);
  // print(listNum3.elementAt(3));


  // var userInfo = {
  //   "name" : "uday kumar Purbey",
  //   "age" : 24,
  //   "nationality" : "Indian"
  // };

  // userInfo["isValidVoter"] = true;

  // print(userInfo);
  // print(userInfo['age']);

  // var employeeData = Map();
  
  // employeeData["name"] = "xyz";
  // employeeData["companyName"] = "abc solution pvt ltd";
  // employeeData["dob"] = 2000;
  // employeeData["empId"] = "abcid4578";

  // print(employeeData);


  // print(employeeData.isEmpty);
  // print(employeeData.isNotEmpty);
  // print(employeeData.length);
  // print(employeeData.keys);
  // print(employeeData.values);
  // print(employeeData.containsKey('companyName'));
  // print(employeeData.containsValue("xyz"));
  // print(employeeData.remove('empId'));
  // print(employeeData);


  // final String name ;
  // name = "Uday Kumar Purbey";

  // final String user = "Uday Kumar Purbey";

  // // final var name2 ; // not allowed thsi is of no use 

  // const name2 = "Uday Shankar Purbey"; 
  
  // //  final and const value never changes the differnece is that for final you cna assing once and then it is unchangable but fo const you have to 
  // // assign value too.intailisation and declaration in const once.

  // final numList1 = [1,2,3,4,5];
  // const numLsit2 = [11,12,13,14,15];

  // numList1.add(6);
  // print(numList1);
  // // numLsit2.add(16); // it throw error 

  var a = 10 ; 
  var b = 20 ;

  if(a>=18 && b <21) {
    print('block 1');
  } else if(a==18 || b ==18) {
    print("block 2");
  } else {
    print('block else');
  }
}


class Human {
  Human();

  void printName()  { // declaration 
    print('Hi From Human Class'); // defination
  }

  void callingName(String name , String localName) {
    print("Name is $name but my another name is $localName");
  }


}

