import 'package:flutter/material.dart';
import 'package:flutter_basics/sharedPref/constant.dart';
import 'package:flutter_basics/sharedPref/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageSharedPref extends StatelessWidget {
  const HomePageSharedPref({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rock World"),
        backgroundColor: Colors.blueGrey,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rock/rock-01.jpg'),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to The Rock World",
                  style: TextStyle(fontSize: 36, color: Colors.redAccent),
                ),
                ElevatedButton(
                  onPressed: () async{
                    var pref = await SharedPreferences.getInstance();
                    pref.setBool(ISLOGINKEY, false);

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageSharePref(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text("Logout"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
