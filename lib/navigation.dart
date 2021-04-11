import 'package:flutter/material.dart';
import 'package:twitterclone/signup.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:twitterclone/utils/variables.dart';

import 'home.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool isSigned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSigned == false ? Login() : HomePage(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Flitter",
                style: mystyle(30, Colors.white, FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login",
                style: mystyle(25, Colors.white, FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 64,
                height: 64,
                child: Image.asset('images/flutterresim.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      labelStyle: mystyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      labelStyle: mystyle(15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Login',
                    style: mystyle(20, Colors.black, FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: mystyle(20),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp())),
                    child: Text(
                      "Register!",
                      style: mystyle(20, Colors.purple, FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
