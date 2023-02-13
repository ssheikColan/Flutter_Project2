import 'package:flutter/material.dart';
import 'package:foodeck/login_via_email.dart';
import 'package:foodeck/otp.dart';
import 'package:foodeck/validator.dart';
import 'package:foodeck/widgets.dart';

import 'createaccount.dart';


class forgotpassword extends StatefulWidget {
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  final formKey = GlobalKey<FormState>();

  late String _userName, _password;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(

        appBar:AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(

            onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
            ),),

            // onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Text('Forgot Password',  style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Input your credentials',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Text("Email"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onSaved: (value)=> _userName = value!,
                    decoration: buildInputDecoration('Enter Email'),
                  ),



                  SizedBox(
                    height: 15,
                  ),

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
                            child: Text("Reset",
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
                      final form = formKey.currentState;
                      if(form!.validate()){

                        form.save();}
                      print("tapped on container");

                      Navigator.push(context, MaterialPageRoute(builder: (context) => otppage()
                      )
                      );

                    },
                  ),



                ],
              ),
            ),
          ),

        ),

      ),
    );
  }
}
