import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/ChangePassword/ChangePassPage.dart';

import 'FrostedGlassBox.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String password, email;
  bool _isObscure1 = true;
  final _passwordtroller = TextEditingController();
  final _emailController = TextEditingController();
  var _erro = "!@!";
  var _erro1 = "!!";
  var _pass_Invalid = false;
  var _email_Invalid = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 3;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("assets/images/2.png").image,
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: FrostedGlassBox(
                    width: contWidth,
                    height: contWidth,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Color(0xff6380AB),
                                  fontSize: 34,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: 345,
                            child: TextField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black12,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(45))),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                )),
                          ),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            width: 345,
                            child: TextField(
                              controller: _passwordtroller,
                              keyboardType: TextInputType.text,
                              obscureText: _isObscure1,
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.black12,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(45))),
                                  hintText: "Password",
                                  errorText: _pass_Invalid ? _erro : null,
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                  suffixIcon: IconButton(
                                      icon: Icon(_isObscure1
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure1 = !_isObscure1;
                                        });
                                      })),
                            ),
                          ),
                          Center(
                            child: ButtonTheme(
                              minWidth: 310,
                              height: 60,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45)),
                                color: Color(0xff2A3D71),
                                onPressed: () {
                                  if (_emailController.text.length < 6 ||
                                      !_emailController.text.contains("@")) {
                                    _email_Invalid = true;
                                  } else {
                                    _email_Invalid = false;
                                  }
                                  ;
                                  if (_passwordtroller.text.length < 6) {
                                    _pass_Invalid = true;
                                  } else {
                                    _pass_Invalid = false;
                                  }
                                  if (!_pass_Invalid && !_email_Invalid) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MyPassPage()));
                                  }
                                },
                                child: Text(
                                  "LOG IN",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Developed by R&D Department (DPIST)",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 21),
              ))
        ],
      ),
    );
  }
}
