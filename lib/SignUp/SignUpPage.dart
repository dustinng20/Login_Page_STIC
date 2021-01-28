import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'FrostedGlassBox.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset("assets/images/background_1.png").image,
                fit: BoxFit.fill),
          ),
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
                          width: 300,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Colors.black12),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email address",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 20)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 300,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Colors.black12),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 20)),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 300,
                          height: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Color(0xff2A3D71)),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => print('Login with Facebook'),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: (Colors.black26),
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0)
                                  ],
                                  image: DecorationImage(
                                    image:
                                        Image.asset("assets/icons/facebook.png")
                                            .image,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print('Login with Google'),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: (Colors.black26),
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0)
                                  ],
                                  image: DecorationImage(
                                    image: Image.asset("assets/icons/gmail.png")
                                        .image,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => print('Login with Twitter'),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: (Colors.black26),
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0)
                                  ],
                                  image: DecorationImage(
                                    image:
                                        Image.asset("assets/icons/twitter.png")
                                            .image,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 135),
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
    );
  }
}
