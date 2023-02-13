import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodeck/widgets.dart';
import 'package:foodeck/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';

import 'createaccount.dart';
import 'food_menu.dart';
import 'login_via_email.dart';
import 'package:geolocator/geolocator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String location = 'Null, Press Button';
  String Address = 'search';
  int currentPos = 0;
  List<String> listPaths = [
    'assets/img_1.png',
    "assets/img_2.png",
    "assets/img_3.png",
  ];
  String s = "\$10";

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {});
  }

  void getLocation() async {
    Position position = await _getGeoLocationPosition();
    location = 'Lat: ${position.latitude} , Long: ${position.longitude}';
    GetAddressFromLatLong(position);
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      getLocation();
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
        //appbar
        Container(
          color: Color(0xFFF05193),
          height: 120,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0, left: .0),
            child: Column(
              children: [
                //loc
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/loc.png',
                        height: 30,
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        '${Address},',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ],
                  ),
                ),

                //search
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                /* Clear the search field */
                              },
                            ),
                            hintText: 'Search...',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        //first_img
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: AssetImage('assets/img_1.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: .0, horizontal: 25.0),
          child: Row(
            children: [
                Image.asset(
                  'assets/img_4.png',
                  height: 130,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              Spacer(),
               Image.asset(
                  'assets/img_5.png',
                  height: 130,
                  width: 140,
                  fit: BoxFit.fill,
                ),

            ],
          ),
        ),

        //1st Image of Slider container
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
            ),
            height: 150,
            child: CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        colors: [Color(0xFFF2F2F7), Color(0xFFD4D4E0)],
                      )),
                  margin: EdgeInsets.all(6.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 28.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pizza Party',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Enjoy pizza from Johnny \n'
                              'and get upto 30% off',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Starting from',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              "$s",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Image.asset(
                              'assets/pizza.png',
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5.0,
                              ),
                              child: Image.asset(
                                'assets/sauces.png',
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Deals",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                          padding: const EdgeInsets.only(left: 40.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset('assets/img_6.png',),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 58.0, bottom: 20),
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
                          padding: const EdgeInsets.only(left: 20.0, top: 10),
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
                  ],
                ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => food_menu_Page()
                    )
                    );
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
                            'assets/img_7.png',
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



                  //explore
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 45.0,bottom: 10,top: 10),
                      child: Text(
                        "Explore More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ),

                Column(
                  children: [
                    Container(
                      height: 170,
                      child: Stack(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset('assets/img_8.png',),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 58.0, bottom: 20),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, ),
                            child: Column(
                              children: [
                                Text(
                                  "Jean’s Cakes",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    "Johar Town",
                                    style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                           Spacer(),

                           Row(  children: [
                            Icon(
                                Icons.star_rate,
                                color: Colors.yellow,
                                size: 20,
                              ),
                             Text(
                               "4.8",
                               style: TextStyle(
                                   fontWeight: FontWeight.bold, fontSize: 13),
                             ),

                             ],
                           ),


                        ],
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        child: Stack(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset('assets/img_9.png',),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 58.0, bottom: 20),
                              child: Container(
                                child: Center(
                                    child: Text(
                                      "20 min",
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, ),
                              child: Column(
                                children: [
                                  Text(
                                    "Thicc Shakes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 17),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text(
                                      "Wapda Town",
                                      style:
                                      TextStyle(fontSize: 15, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),

                            Row(  children: [
                              Icon(
                                Icons.star_rate,
                                color: Colors.yellow,
                                size: 20,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 13),
                              ),

                            ],
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Column(
                  children: [
                    Container(
                      height: 170,
                      child: Stack(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset('assets/img_10.png',),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 58.0, bottom: 20),
                            child: Container(
                              child: Center(
                                  child: Text(
                                    "30 min",
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, ),
                            child: Column(
                              children: [
                                Text(
                                  "Daily Deli",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Garden Town",
                                    style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),

                          Row(  children: [
                            Icon(
                              Icons.star_rate,
                              color: Colors.yellow,
                              size: 20,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),

                          ],
                          ),


                        ],
                      ),
                    )
                  ],
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: Stack(children: [
                      Image.asset('assets/cart_bg.png',),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 35.0,),
                         child: Icon(
                          Icons.brightness_1,
                          color: Colors.black,
                          size: 25,
                      ),
                       ),

                      Padding(
                        padding: const EdgeInsets.only(left: 43.0,top: 4),
                        child: Text("4",style:  TextStyle(fontSize: 15, color: Colors.white),),
                      ),

                    ],

                    ),
                  ),
                )


      ]))),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.red),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
