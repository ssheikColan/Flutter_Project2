import 'package:flutter/material.dart';
import 'package:foodeck/checkout.dart';
import 'package:foodeck/home.dart';
import 'package:foodeck/login_via_email.dart';
import 'package:foodeck/mapscreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'food_variations.dart';
import 'login.dart';


class cartpage extends StatefulWidget {

  @override
  _cartpageState createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  String s = "\$10";
  String six = "\$6";
  String twel = "\$12";
  String twothree = "\$23";
  String onesix = "\$16";
  String eight = "\$8";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
      AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(

          onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
          ),),

          // onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text('Cart',  style: TextStyle(color: Colors.black),),
      ),

                // Divider(
                //   color: Color(0xffF2F2F7),
                //   height: 10,
                //   thickness: 5,
                //
                // ),

                InkWell(

                  child: Container(
                      height: 100,
                      child: Row(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.asset('assets/img_12.png',width: 100,height: 100,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chicken Fajita Pizza",style: TextStyle( fontSize: 17),),
                              SizedBox(height: 5),
                              Text("8” pizza with regular soft drink",style: TextStyle( fontSize: 15,color: Colors.grey),),
                              SizedBox(height: 5),
                              Text(  "$s",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            ],),
                        )


                      ],)

                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => food_variations_Page()
                    )
                    );
                  },
                ),


                Container(
                    height: 80,
                    child: Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        child: Image.asset('assets/img_13.png',width: 100,height: 100,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chicken Fajita Pizza",style: TextStyle( fontSize: 17),),
                            SizedBox(height: 5),
                            Text("8” pizza with regular soft drink",style: TextStyle( fontSize: 15,color: Colors.grey),),
                            SizedBox(height: 5),
                            Text(  "$s",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ],),
                      )


                    ],)

                ),









                   Container(
                     color: Color(0xffF2F2F7),
                     height: 270,
                     child: Column(
                       children: [
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Popular with these",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.black,
                                ),
                              ),
                              // IconButton(onPressed:() {}, icon: Icons(Icons.arrow_right_alt))

                              // InkWell(
                              //   onTap: () {},
                              //   child: Container(
                              //     child: IconButton(
                              //       icon: const Icon(Icons.arrow_right_alt),
                              //       onPressed: () {},
                              //     ),
                              //   ),
                              // )
                            ],
                          ),
                  ),



                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 0.0),
                      height: 220,
                      child: ListView(
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 160,
                                  width: 300,
                                  child: Stack(children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15.0),
                                        child: Image.asset('assets/img_18.png',),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.only(left: 28.0, bottom: 20),
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                                "40 min",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold, fontSize: 12),
                                              )),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.white,
                                          ),
                                          height: 20,
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 0.0, top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Daily Deli",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 17),
                                          ),
                                          Text(
                                            "Johar Town",
                                            style:
                                            TextStyle(fontSize: 15, color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120.0),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => food_menu_Page()
                              // )
                              // );
                            },

                          ),

                          Column(children: [
                            Container(
                              height: 160,
                              width: 300,
                              child: Stack(children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'assets/img_19.png',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                            "12 min",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 12),
                                          )),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      height: 20,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ]),
                            ),


                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30.0, top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rice Bowl",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 17),
                                      ),
                                      Text(
                                        "Wapda Town",
                                        style:
                                        TextStyle(fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100.0),
                                  child: Icon(
                                    Icons.star_rate,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                              ],
                            )
                          ]),
                        ],
                      ),
                  ),
                ),
                       ],
                     ),
                   ),




                Padding(
                  padding: const EdgeInsets.only(left: 28.0,top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                    ),
                  ),
                ),




                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(color: Color(0xffF2F2F7),)),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "GREELOGIX",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                          ),
                        ),
                        // IconButton(onPressed:() {}, icon: Icons(Icons.arrow_right_alt))

                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: IconButton(
                              icon: const Icon(Icons.arrow_right_alt),
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: Color(0xffF2F2F7),
                  height: 10,
                  thickness: 5,

                ),



                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                  child: Column(
                    children: [

                Row(
                  children: [
                    Text("Subtotal",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold, )),
                    Spacer(),
                    Text("\$50",style:TextStyle(fontSize: 17,color: Colors.pinkAccent)),
                  ],
                ),

                      Divider(
                        color: Colors.white,
                        height: 20,
                        thickness: 2,

                      ),
                    Row(
                      children: [
                        Text("Delivery Fee",style:TextStyle(fontSize: 17,color: Colors.black)),
                        Spacer(),
                        Text("\$10",style:TextStyle(fontSize: 17,color: Colors.grey)),
                      ],
                    ),
                      Divider(
                        color: Color(0xffF2F2F7),
                        height: 25,
                        thickness: 2,

                      ),

                    Row(
                      children: [
                        Text("VAT",style:TextStyle(fontSize: 17,color: Colors.black)),
                        Spacer(),
                        Text("\$4",style:TextStyle(fontSize: 17,color: Colors.grey)),
                      ],
                    ),

                      Divider(
                        color: Color(0xffF2F2F7),
                        height: 25,
                        thickness: 2,

                      ),
                      Row(
                        children: [
                          Text("Coupon",style:TextStyle(fontSize: 17,color: Colors.black)),
                          Spacer(),
                          Text("\-\$10",style:TextStyle(fontSize: 17,color: Colors.greenAccent)),
                        ],
                      ),

                  ],),
                ),



                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35.0, horizontal:25.0),
                  child: Row(children: [
                    Text(  "$twothree",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
                    Spacer(),

                    InkWell(
                      child: Container(
                        height: 50,
                        width: 150,
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent, borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(color: Colors.pinkAccent)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Go to Checkout",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 17,
                                )),

                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => checkoutpage()
                        )
                        );

                      },
                    ),
                  ],),
                )


              ]))),
    );
  }
}