import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:get/get.dart';
import 'package:myshop/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';
import 'package:myshop/app/modules/product_screen/views/product_screen_view.dart';

class HomeView extends GetView<HomeController> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff121421),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MY SHOP",
                        style: TextStyle(
                          color: Color(0xffBABABA),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              height: 10,
                              width: 10,
                              child: Image.asset(
                                  "assets/Ellipse-4.png",
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Shop Name",
                            style: TextStyle(
                              color: Color(0xffBABABA),
                              fontSize: 18
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                        "assets/Ellipse-2.png",
                    ),
                  )

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6, top: 15, bottom: 15),
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0xff1D202D),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 15,
                                width: 15,
                                child: Image.asset("assets/Icon awesome-angle-left.png")
                            ),
                            Text(
                              "12-Feb-22",
                              style: TextStyle(
                                color: Color(0xffBABABA)
                              ),
                            ),
                            Container(
                                height: 15,
                                width: 15,
                                child: Image.asset("assets/Icon awesome-angle-right.png")
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cash",
                              style: TextStyle(
                                  color: Color(0xff58A058)
                              ),
                            ),
                            Text(
                              "12000",
                              style: TextStyle(
                                  color: Color(0xff58A058)
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Expense",
                              style: TextStyle(
                                  color: Color(0xffDE4538)
                              ),
                            ),
                            Text(
                              "12000",
                              style: TextStyle(
                                  color: Color(0xffDE4538)
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: InkWell(
                        onTap: (){
                          Get.offNamed(Routes.PRODUCT_SCREEN);
                        },
                        child: Container(
                          height: 120,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff245186),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff437FC6),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 60,
                                child: Text(
                                  "SALE",
                                  style: TextStyle(
                                    color: Color(0xff0C2440),
                                    fontSize: 16
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 40,
                                left: 50,
                                child: Text(
                                  "10000 TK",
                                  style: TextStyle(
                                      color: Color(0xff0C2440),
                                      fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff378680),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff52AAA3),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 60,
                              child: Text(
                                "Transfer",
                                style: TextStyle(
                                    color: Color(0xff0C2440),
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 40,
                              child: Text(
                                "100 TK",
                                style: TextStyle(
                                  color: Color(0xff0C2440),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff955838),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xffC37B56),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 60,
                              child: Text(
                                "Return",
                                style: TextStyle(
                                    color: Color(0xff0C2440),
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 35,
                              child: Text(
                                "100 TK",
                                style: TextStyle(
                                  color: Color(0xff0C2440),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff346234),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xff549154),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 60,
                              child: Text(
                                "Purchase",
                                style: TextStyle(
                                    color: Color(0xff0C2440),
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 40,
                              left: 50,
                              child: Text(
                                "10000 TK",
                                style: TextStyle(
                                  color: Color(0xff0C2440),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff1D202D),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 12,
                            width: 12,
                            child: Image.asset("assets/Icon ionic-ios-cash.png")
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Expense",
                          style: TextStyle(
                            color: Color(0xffBABABA),
                            fontSize: 10
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 12,
                            width: 12,
                            child: Image.asset("assets/Icon feather-shopping-bag.png")
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Products",
                          style: TextStyle(
                              color: Color(0xffBABABA),
                              fontSize: 10,
                          ),
                        )

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(8),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: SizedBox(
                        height: 12,
                        width: 12,
                        child: Image.asset("assets/Icon material-dashboard.png"),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 12,
                            width: 12,
                            child: Image.asset("assets/Icon material-report.png")
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Products",
                          style: TextStyle(
                              color: Color(0xffBABABA),
                              fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 12,
                            width: 12,
                            child: Image.asset("assets/Icon metro-lines.png")
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "More",
                          style: TextStyle(
                              color: Color(0xffBABABA),
                              fontSize: 10
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),


    );
  }
}
