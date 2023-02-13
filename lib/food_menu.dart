import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodeck/food_variations.dart';
import './FirstScreen.dart';
import './SecondScreen.dart';


class food_menu_Page extends StatefulWidget {
  @override
  food_menuState createState() => food_menuState();
}

class food_menuState extends State<food_menu_Page> {
  String s = "\$10";
  String six = "\$6";
  String twel = "\$12";
  String twothree = "\$23";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Stack(
            children: [
                    Image.asset('assets/img_11.png',    fit: BoxFit.fill,width: 500,height: 180,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 110),
                child: Column(
                  children: [
                    Text(
                      "Daily Deli",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22,color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        "Johar Town",
                        style:
                        TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

            //appbar
            Row(children: [
              IconButton(
                icon: Icon(Icons.arrow_back_outlined),
                color: Colors.white,
                onPressed: () {},
                tooltip: 'Share',
              ),
              Spacer(),

          Row(children: [
              IconButton(
                icon: Icon(Icons.favorite_outline),
                color: Colors.white,
                onPressed: () {},
                tooltip: 'Share',
              ),
              IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {},
                color: Colors.white,
                tooltip: 'Share',
              ),
              IconButton(
                icon: Icon(Icons.more_vert_outlined),
                onPressed: () {},
                color: Colors.white,
                tooltip: 'Share',
              ),
          ],)

            ],)
          ],),


          //rate tab
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 45.0),
            child: Row(children: [
               Column(children: [
                 IconButton(
                   icon: Icon(Icons.star_rate_outlined),
                   color: Colors.black,
                   onPressed: () {},
                   tooltip: 'Share',
                 ),
                 Text("4.8")
               ],),

              Spacer(),
              Column(children: [
                IconButton(
                  icon: Icon(Icons.access_time_outlined),
                  color: Colors.black,
                  onPressed: () {},
                  tooltip: 'Share',

                ),
                Text("40min")
              ],),
              Spacer(),
              Column(children: [
                IconButton(
                  icon: Icon(Icons.location_on_outlined),
                  color: Colors.black,
                  onPressed: () {},
                  tooltip: 'Share',

                ),
                Text("1.4km")
              ],),
            ],),
          ),


          //Tabbbar
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              SizedBox(height: 10.0),
              DefaultTabController(
                  length: 5, // length of tabs
                  initialIndex: 0,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: Colors.pinkAccent,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.pinkAccent,
                        tabs: [
                          Tab(text: 'Popular',),
                          Tab(text: 'Deals'),
                          Tab(text: 'Wraps'),
                          Tab(text: 'Beverages'),
                          Tab(text: 'Sandwiches'),
                        ],
                      ),

                    ),
                    Container(
                        height:800,
                       //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                        ),
                        child: TabBarView(children: <Widget>[
                          Container(
                            child:

                        Column(children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13.0,left: 15),
                              child: Text(
                                "Popular",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black),
                              ),
                            ),
                          ),



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



                          //secondimg
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13.0,left: 15),
                              child: Text(
                                "Deals",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black),
                              ),
                            ),
                          ),

                          Container(
                              height: 120,
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(45.0),
                                  child: Image.asset('assets/img_14.png',width: 100,height: 100,),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 18.0),
                                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Deal 1",style: TextStyle( fontSize: 17),),
                                      SizedBox(height: 5),
                                      Text("1 regular burger with \n croquette and hot cocoa",style: TextStyle( fontSize: 15,color: Colors.grey),),
                                      SizedBox(height: 5),
                                      Text(  "$twel",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    ],),
                                )


                              ],)

                          ),


                          Container(
                              height: 120,
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(45.0),
                                  child: Image.asset('assets/img_15.png',width: 100,height: 100,),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 18.0),
                                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Deal 2",style: TextStyle( fontSize: 17),),
                                      SizedBox(height: 5),
                                      Text("1 regular burger with small \n fries",style: TextStyle( fontSize: 15,color: Colors.grey),),
                                      SizedBox(height: 5),
                                      Text(  "$six",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    ],),
                                )


                              ],)

                          ),

                          Container(
                              height: 120,
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(45.0),
                                  child: Image.asset('assets/img_16.png',width: 100,height: 100,),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 18.0),
                                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Deal 3",style: TextStyle( fontSize: 17),),
                                      SizedBox(height: 5),
                                      Text("2 pieces of beef stew with \nhomemade sauce",style: TextStyle( fontSize: 15,color: Colors.grey),),
                                      SizedBox(height: 5),
                                      Text(  "$twothree",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                                    ],),
                                )


                              ],)

                          ),

                  ],),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text('Display Tab 4', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ])
                    )
                  ])
              ),
            ]),
          ),




        ]))),
    );
  }
}
