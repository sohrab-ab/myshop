import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_screen_controller.dart';
import 'package:myshop/app/modules/home/views/home_view.dart';

class LoginScreenView extends GetView<LoginScreenController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: ListView(
          children:[
            SizedBox(height: 30,),
            Center(
              child: Text(
                "MY SHOP",
                style: TextStyle(
                    color: Color(0xffBABABA),
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 120,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xffBABABA),
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 16,),
                  textField(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset("assets/Icon feather-user.png"),
                      ),
                      hintText: " User email or id"
                  ),
                  SizedBox(height: 10,),
                  textField(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset("assets/Icon feather-key.png"),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/Icon feather-eye.png"),
                      ),
                      hintText: " Password"
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xffBABABA),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff295829),
                          fixedSize: Size(140, 60),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                      onPressed: (){
                        Get.to(HomeView());
                      },
                    ),
                  )
                ],
              ),
            )
          ]
      ),

    );
  }

  Widget textField({prefixIcon, suffixIcon, hintText}){
    return Container(
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff292C38)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              cursorHeight: 25,
              cursorColor: Color(0xffBABABA),
              style: TextStyle(
                color: Color(0xffBABABA),
              ),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon?? null,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Color(0xffBABABA)
                ),
                border: InputBorder.none,
              )
          ),
        ),
      ),
    );
  }

}
