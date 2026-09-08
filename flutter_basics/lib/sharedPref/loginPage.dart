import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basics/sharedPref/constant.dart';
import 'package:flutter_basics/sharedPref/homePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageSharePref extends StatefulWidget {
  const LoginPageSharePref({super.key});

  @override
  State<LoginPageSharePref> createState() => _LoginPageSharePrefState();
}

class _LoginPageSharePrefState extends State<LoginPageSharePref> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/rock/rock-01.jpg"),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: Container(
          height: MediaQuery.heightOf(context),
          width: MediaQuery.widthOf(context),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxHeight: 500, maxWidth: 500),
              height: MediaQuery.heightOf(context) / 2,
              width: MediaQuery.widthOf(context) / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hint: Text("Enter Your Email Address"),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        hint: Text("Enter Your Password"),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final email = emailController.text;
                      final password = passwordController.text;
                      if (email != 'null' && password != 'null') {
                        emailController.text = '';
                        passwordController.text = '';
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageSharedPref(),
                          ),
                          (route) => false,
                        );
                        var pref = await SharedPreferences.getInstance();
                        pref.setBool(ISLOGINKEY, true);
                      }
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
