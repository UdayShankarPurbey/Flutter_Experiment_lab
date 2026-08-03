
//  TO RUN : flutter run -t lib/basic.dart

import 'package:flutter/material.dart';

void main() {
  runApp(BasicApp());
}

class BasicApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:  "basic testing",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Page"),
      ),
      body: Container(
        color: Colors.blue.shade50,
      ),
    );
  }
}