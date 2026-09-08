import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basics/sharedPref/constant.dart';
import 'package:flutter_basics/sharedPref/homePage.dart';
import 'package:flutter_basics/sharedPref/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenSharedPref extends StatefulWidget {
  const SplashScreenSharedPref({super.key});

  @override
  State<SplashScreenSharedPref> createState() => _SplashScreenSharedPrefState();
}

class _SplashScreenSharedPrefState extends State<SplashScreenSharedPref> {
  @override
  void initState() {
    super.initState();
    showPage();
  }

  void showPage() async {
    var pref = await SharedPreferences.getInstance();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => pref.getBool(ISLOGINKEY) == true
              ? HomePageSharedPref()
              : LoginPageSharePref(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/rock/rock-02.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: MediaQuery.heightOf(context),
          width: MediaQuery.widthOf(context),
          child: Center(
            child: Text(
              "Rock World",
              style: TextStyle(fontSize: 38, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
