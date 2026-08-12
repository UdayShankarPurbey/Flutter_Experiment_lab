import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intro Page')),
      body: Container(
        color: const Color.fromARGB(255, 103, 247, 180),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            child: Column(
              children: [
                Text(
                  'Welcome to Intro Page',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Home Page"),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Click To Explore",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      FaIcon(
                        FontAwesomeIcons.faceSmile,
                        color: Color.fromARGB(255, 255, 215, 35),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 250, 32, 32),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
