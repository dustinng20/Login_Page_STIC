import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/SignUp/SignUpPage.dart';

import 'FrostedGlassBox.dart';

class MyPassPage extends StatefulWidget {
  @override
  _MyPassPageState createState() => _MyPassPageState();
}

class _MyPassPageState extends State<MyPassPage> {
  String password_old, password_new;
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  final _oldController = TextEditingController();
  final _newController = TextEditingController();
  var _erro = "!!";
  var _erro1 = "!!";
  var _passold_Invalid = false;
  var _passnew_Invalid = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/images/background_1.png").image,
                fit: BoxFit.fill),
          ),
        ),
        SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 220,
              height: 220,
              padding: EdgeInsets.all(1),
              child: Image.asset('assets/images/LOGIN_LOGO.png'),
            ),
            Center(
              child: FrostedGlassBox(
                width: contWidth,
                height: contWidth,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "Please change password \n   for the first time login",
                          style: TextStyle(
                              color: Color(0xff6380AB),
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        width: 345,
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(45),
                        //     color: Colors.black12),
                        child: TextField(
                          controller: _oldController,
                          keyboardType: TextInputType.text,
                          obscureText: _isObscure1,
                          onChanged: (value) {
                            setState(() {
                              password_old = value;
                            });
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45))),
                              hintText: "Old Password",
                              errorText: _passold_Invalid ? _erro : null,
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 20),
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
                      SizedBox(height: 10),
                      Container(
                        width: 345,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(45),
                        //     color: Colors.black12),
                        child: TextField(
                          controller: _newController,
                          keyboardType: TextInputType.text,
                          obscureText: _isObscure2,
                          onChanged: (value) {
                            setState(() {
                              password_new = value;
                            });
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(45))),
                              hintText: "New Password",
                              errorText: _passnew_Invalid ? _erro : null,
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                              suffixIcon: IconButton(
                                  icon: Icon(_isObscure2
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure2 = !_isObscure2;
                                    });
                                  })),
                        ),
                      ),
                      Center(
                        child: ButtonTheme(
                          minWidth: 350,
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45)),
                            color: Color(0xff2A3D71),
                            onPressed: () {
                              if (_newController.text.length < 6) {
                                _passnew_Invalid = true;
                              } else {
                                _passnew_Invalid = false;
                              }
                              if (_oldController.text.length < 6) {
                                _passold_Invalid = true;
                              } else {
                                _passold_Invalid = false;
                              }
                              if (!_passnew_Invalid && !_passold_Invalid) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyHomePage()));
                              }
                            },
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 150),
            Center(
                child: Text(
              "Developed by R&D Department (DPIST)",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 21),
            ))
          ],
        )),
      ],
    ));
  }
}
