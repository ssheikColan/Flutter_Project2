import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodeck/widgets.dart';
import 'package:foodeck/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'createaccount.dart';
import 'login_via_email.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: <Widget>[


              // Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Padding(
              //         padding: const EdgeInsets.only(top: 8.0),
              //         child: Image.asset(
              //           'assets/shrimp.png', height: 80.0, width: 80,
              //         ),
              //       ),
              //       Image.asset('assets/rice.png', height: 80.0, width: 80,),
              //       Padding(
              //         padding: const EdgeInsets.only(top: 8.0),
              //         child: Image.asset('assets/pizza.png', height: 80.0, width: 80,),
              //       ),
              //     ]),
              // Container(
              //     child: Align(
              //         alignment: Alignment.center,
              //         child: Image.asset('assets/foodeck.png', height: 80.0, width: 80,))),
              // Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       //
              //       Stack(children: [
              //         Image.asset('assets/juice1.png', height: 80.0, width: 80,),
              //         Padding(
              //           padding: const EdgeInsets.only(left: 40, top: 20),
              //           child: Image.asset('assets/juice.png', height: 80.0, width: 80,),
              //         ),
              //       ]),
              //
              //       Image.asset('assets/sauces.png', height: 80.0, width: 80,)
              //     ]),

              Stack(children:<Widget> [

            Container(
                child:
           Align(
                     alignment: Alignment.bottomLeft,
            child: Image.asset(
                      'assets/shrimp.png',height: 110,
                    ),
            ),
            ),
                Container(
                  child: Align( alignment: Alignment.center,
                      child: Image.asset('assets/rice.png', height: 80,)),
                ),
                Container(
                  child: Align( alignment: Alignment.centerRight,
                      child: Image.asset('assets/pizza.png', height: 120,)),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 138.0),
                  child: Stack(children: [  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(child: Image.asset('assets/juice1.png',  )),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, top: 20),
                      child: Image.asset('assets/juice.png',  ),
                    ),],),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100,left: 70),
                  child: Container(

                          child: Image.asset('assets/logonew.png', color: Colors.pinkAccent,  height: 50.0,)),
                ),


                     Padding(
                       padding: const EdgeInsets.only(top: 110,left: 40),
                       child: Container(
                        child: Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/foodeck.png', ))),
                     ),

                Padding(
                  padding: const EdgeInsets.only(top: 138.0),
                  child: Container(
                    child: Align( alignment: Alignment.centerRight,
                        child: Image.asset('assets/sauces.png',)
                  ),
                  ),
                ),



              ]),



              SizedBox(
                height: 15,
              ),
              CustomWidgets.socialButtonRect(
                  'Login via Google', googleColor,icon:  FontAwesomeIcons.googlePlusG,
                  onTap: () {

              }),
              CustomWidgets.socialButtonRect('Login via Facebook',
                  facebookColor,icon:  FontAwesomeIcons.facebookF, onTap: () {

              }),
              CustomWidgets.socialButtonRect(
                  'Login via Apple', githubColor,icon:  FontAwesomeIcons.apple,
                  onTap: () {

              }),

              CustomWidgets.socialButtonRect(
                  'Login via Email', Colors.pinkAccent, icon: FontAwesomeIcons.envelope,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
                    )
                    );
              }),

        InkWell(
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(color: Colors.grey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text("Create an account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 18,
                          )),
                ),
              ],
            ),
          ),

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => createaccount()
                )
                );
              },
        ),




              SizedBox(
                height: 20,
              ),


              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text.rich(TextSpan(
                        text: 'By signing up, you are agreeing to our ',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Terms & \nConditions',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.pinkAccent,

                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // code to open / launch terms of service link here
                            }),
                    ]))),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
