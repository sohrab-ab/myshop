
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import '../controllers/splash_screen_controller.dart';
import 'package:myshop/app/modules/login_screen/views/login_screen_view.dart';


class SplashScreenView extends GetView<SplashScreenController> {


  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), ()=>Get.off(LoginScreenView()));
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: Stack(
        children: [
          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "MY SHOP",
                style: TextStyle(
                  color: Color(0xffBABABA),
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "It's simple to use",
                style: TextStyle(
                    color: Color(0xffBABABA),
                  fontSize: 12
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: "Developed by",
                    style: TextStyle(
                        color: Color(0xffBABABA),
                        fontSize: 10
                    ),
                  children: [
                    TextSpan(
                      text: "\nFlexCoder",
                      style: TextStyle(
                        color: Color(0xffBABABA),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      )
                    )
                  ]
                ),


              ),
            ),
          )
        ],
      ),
    );
  }
}
