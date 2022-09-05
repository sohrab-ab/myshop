import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_screen_controller.dart';

class ProductScreenView extends GetView<ProductScreenController> {
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
                padding: const EdgeInsets.only(
                    left: 6, right: 6, top: 15, bottom: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xff292C38),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: TextField(
                              cursorColor: Color(0xffB5B5B5),
                              cursorHeight: 16,
                              style: TextStyle(
                                  color: Color(0xffB5B5B5),
                                  fontSize: 12
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search, color: Color(0xffB5B5B5),
                                    size: 16,),
                                  suffixIcon: Icon(
                                    Icons.close, color: Color(0xffB44D4D),
                                    size: 16,),
                                  hintText: " Search product",
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 12
                                  )
                              )


                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 6,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.only(left: 6, right: 6),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xffB5B5B5),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 12,
                                width: 12,
                                child: Image.asset(
                                    "assets/Icon metro-calendar.png")
                            ),
                            Text(
                              "16-Feb-22",
                              style: TextStyle(
                                  color: Color(0xff7E4D34),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 6, right: 6, bottom: 10),
                      padding: EdgeInsets.all(10),
                      height: 120,
                      decoration: BoxDecoration(
                          color: Color(0xff292C38),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  "Rice",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Text(
                                      "12000 TK",
                                      style: TextStyle(
                                          color: Color(0xff58A058)
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                          color: Color(0xffAF3121),
                                          borderRadius: BorderRadius.circular(
                                              100)
                                      ),
                                      child: Icon(
                                        Icons.delete, color: Color(0xffFFFFFF),
                                        size: 16,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7, bottom: 7),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Qty",
                                        style: TextStyle(
                                            color: Color(0xffBABABA)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Color(0xffBABABA),
                                            borderRadius: BorderRadius.circular(
                                                5)
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "MRP",
                                        style: TextStyle(
                                            color: Color(0xffBABABA)
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Color(0xffBABABA),
                                            borderRadius: BorderRadius.circular(
                                                5)
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: "Vat: 5",
                                          style: TextStyle(
                                              color: Color(0xffC4946B),
                                              fontSize: 12
                                          ),
                                          children: [
                                            WidgetSpan(
                                              child: Image.asset(
                                                "assets/Icon feather-percent.png",
                                                height: 10,
                                                width: 10,
                                                color: Color(0xffC4946B),
                                              ),
                                            ),
                                            TextSpan(
                                              text: "  (1200 TK)",
                                              style: TextStyle(
                                                  color: Color(0xffC4946B),
                                                  fontSize: 12
                                              ),
                                            )
                                          ]
                                      ),

                                    ),
                                    SizedBox(width: 12,),
                                    RichText(
                                      text: TextSpan(
                                          text: "Dis: 5",
                                          style: TextStyle(
                                              color: Color(0xff6BC4BA),
                                              fontSize: 12
                                          ),
                                          children: [
                                            WidgetSpan(
                                              child: Image.asset(
                                                "assets/Icon feather-percent.png",
                                                height: 10,
                                                width: 10,
                                                color: Color(0xff6BC4BA),
                                              ),
                                            ),
                                            TextSpan(
                                              text: "  (1200 TK)",
                                              style: TextStyle(
                                                  color: Color(0xff6BC4BA),
                                                  fontSize: 12
                                              ),
                                            )
                                          ]
                                      ),

                                    ),

                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Color(0xffD3781C),
                                    shape: BoxShape.circle
                                ),
                                child: Image.asset(
                                  "assets/Icon feather-percent.png", height: 10,
                                  width: 10,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Expanded(
                flex: 9,
                child: Container(
                  margin: EdgeInsets.only(left: 6, right: 6, top: 20),
                  decoration: BoxDecoration(
                      color: Color(0xff121421),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 6, right: 6, bottom: 15),
                        height: 0.5,
                        decoration: BoxDecoration(
                            color: Color(0xff707070)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub Total",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            ),
                            Text(
                              "100 TK",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            ),
                            Text(
                              "100 TK",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Vat",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            ),
                            Text(
                              "100 TK",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              "12000 TK",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xff292C38),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Image.asset(
                                  "assets/Icon ionic-ios-arrow-round-back.png"),
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xff295829),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text(
                                  "Sale",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF)
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      ),

    );
  }


  showPopUp() {
    Get.generalDialog(pageBuilder: (ctx, anim1, anim2) =>
        AlertDialog(
          title: Text("Demo Title"),
          content: Container(
              child: Obx(() {
                return controller.showCredit.value ? Text("Hello true") : Text("Hello container");
              })
          ),
          actions: [
          ],
        ));
  }
}
