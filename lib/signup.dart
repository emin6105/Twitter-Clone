import 'package:flutter/material.dart';
import 'package:twitterclone/utils/variables.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                "Get Started flittering",
                style: mystyle(30, Colors.white, FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Register",
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
                      labelText: 'Repeat Password',
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
                    'Register',
                    style: mystyle(20, Colors.black, FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I agree to",
                    style: mystyle(20),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Terms())),
                    child: Text(
                      "Terms of policy",
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

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
