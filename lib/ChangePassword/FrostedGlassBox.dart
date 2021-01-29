import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class FrostedGlassBox extends StatelessWidget {
  final double width, height;
  final Widget child;

  const FrostedGlassBox(
      {Key key,
      @required this.width,
      @required this.height,
      @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: true,
      right: true,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: 375.w,
          height: 380.h,
          child: Stack(
            children: [
              BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 10.0,
                  ),
                  child: Container(
                    child: Text(" "),
                  )),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.6),
                          blurRadius: 80,
                          offset: Offset(2, 2))
                    ],
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2), width: 1.0),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.1),
                        ],
                        stops: [
                          0.0,
                          1.0,
                        ])),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
