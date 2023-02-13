import 'package:flutter/material.dart';
import 'package:foodeck/home.dart';
import 'package:foodeck/login_via_email.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'food_variations.dart';
import 'login.dart';


class checkoutpage extends StatefulWidget {

  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkoutpage> {
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
                  title: Text('Checkout',  style: TextStyle(color: Colors.black),),
                ),




                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Delivery Instructions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Let us know if you have specific things in \nmind",
                        style: TextStyle(fontSize: 17,color: Colors.grey),
                      ),


                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide( color: Color(0xffF2F2F7), width: 2.0),
                              borderRadius: BorderRadius.circular(45.0),
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(  color: Color(0xffF2F2F7), width: 2.0),
                            ),
                            hintText: 'e.g. I am home around 10 pm',
                            hintStyle: TextStyle(fontSize: 17),

                          ),
                        ),
                      ),



                    ],),
                ),

                Divider(
                  color: Color(0xffF2F2F7),
                  height: 5,
                  thickness: 2,

                ),


                Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Payment Method",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Colors.black,
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                child: IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),



                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 0.0),
                          height: 210,
                          child: ListView(
                            // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[

                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset('assets/creditcard.png',),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset('assets/creditcard2.png',),
                                ),
                              ),


                    ],
                  ),
                ),


                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal:25.0),
                        child: Column(
                          children: [

                            Row(
                              children: [
                                Text("Order Summary",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold, )),
                                Spacer(),
                                // Text("\$50",style:TextStyle(fontSize: 17,color: Colors.pinkAccent)),
                              ],
                            ),

                            Divider(
                              color: Colors.white,
                              height: 20,
                              thickness: 2,

                            ),
                            Row(
                              children: [
                                Text("1x Chicken Fajita Pizza",style:TextStyle(fontSize: 17,color: Colors.black)),
                                Spacer(),
                                Text("\$20",style:TextStyle(fontSize: 17,color: Colors.grey)),
                              ],
                            ),
                            Divider(
                              color: Color(0xffF2F2F7),
                              height: 25,
                              thickness: 2,

                            ),

                            Row(
                              children: [
                                Text("3x Chicken Wrap Deluxe",style:TextStyle(fontSize: 17,color: Colors.black)),
                                Spacer(),
                                Text("\$30",style:TextStyle(fontSize: 17,color: Colors.grey)),
                              ],
                            ),

                            Divider(
                              color: Color(0xffF2F2F7),
                              height: 25,
                              thickness: 2,

                            ),
                            Row(
                              children: [
                                Text("Subtotal",style:TextStyle(fontSize: 17,color: Colors.black)),
                                Spacer(),
                                Text("\-\$50",style:TextStyle(fontSize: 17,color: Colors.grey)),
                              ],
                            ),

                            Divider(
                              color: Color(0xffF2F2F7),
                              height: 25,
                              thickness: 2,

                            ),

                            Row(
                              children: [
                                Text("Delivery Fee",style:TextStyle(fontSize: 17,color: Colors.black)),
                                Spacer(),
                                Text("\-\$10",style:TextStyle(fontSize: 17,color: Colors.grey)),
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
                                Text("\-\$4",style:TextStyle(fontSize: 17,color: Colors.green)),
                              ],
                            ),

                          ],),
                      ),



                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal:25.0),
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



              ],
              ),


]))),
);
}
}