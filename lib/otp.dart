import 'package:flutter/material.dart';
import 'package:foodeck/home.dart';
import 'package:foodeck/login_via_email.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'login.dart';


class otppage extends StatefulWidget {

  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {
// 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(

          onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
          ),),

          // onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title: Text('OTP',  style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Confirm the code we sent you',   style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),),
            const SizedBox(
              height: 30,
            ),
            // Implement 4 input fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OtpInput(_fieldOne, true),
                OtpInput(_fieldTwo, false),
                OtpInput(_fieldThree, false),
                OtpInput(_fieldFour, false)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: const Text('Resend',   style: TextStyle(
                fontSize: 13.0,
                color: Colors.grey,
              ),),
            ),


            const SizedBox(
              height: 20,
            ),

            // ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         _otp = _fieldOne.text +
            //             _fieldTwo.text +
            //             _fieldThree.text +
            //             _fieldFour.text;
            //       });
            //     },
            //     child: const Text('Confirm')),


            InkWell(
              child: Container(
                height: 50,

                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent, borderRadius: BorderRadius.all(Radius.circular(10)),border: Border.all(color: Colors.pinkAccent)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Confirm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          )),
                    ),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  _otp = _fieldOne.text +
                      _fieldTwo.text +
                      _fieldThree.text +
                      _fieldFour.text;
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()
                )
                );

              },
            ),


          ],
        ),
      ),
    );
  }
}

// Create an input widget that takes only one digit
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}