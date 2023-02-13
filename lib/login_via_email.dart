import 'package:flutter/material.dart';
import 'package:foodeck/login.dart';
import 'package:foodeck/forgotpassword.dart';
import 'package:foodeck/otp.dart';
import 'package:foodeck/validator.dart';
import 'package:foodeck/widgets.dart';

import 'createaccount.dart';


class loginviaemail extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<loginviaemail> {
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

             onPressed: () =>   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()
             ),),

             // onPressed: () => Navigator.of(context).pop(),
             icon: Icon(Icons.arrow_back,color: Colors.black,),
           ),
           title: Text('Login via Email',  style: TextStyle(color: Colors.black),),
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
                  SizedBox(height: 20.0,),
                  Text("Password"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    obscureText: true,
                    validator: (value)=> value!.isEmpty?"Please enter password":null,
                    onSaved: (value)=> _password = value!,
                    decoration: buildInputDecoration('Enter Password'),
                  ),
                  SizedBox(height: 20.0,),

                  // Text("Forgot Password?"),
                  InkWell(
                    child: Text("Forgot Password?"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => forgotpassword()
                      )
                      );
                    },
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
                            child: Text("Login",
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
                            child: Text("Create an account instead",
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

                ],
              ),
            ),
          ),

        ),

      ),
    );
  }
}


// class loginviaemail extends StatefulWidget {
//   final formGlobalKey = GlobalKey < FormState > ();
//   final formKey = GlobalKey<FormState>();
//
//   late String _userName, _password;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//    return MaterialApp(
//      home: SafeArea(
//        child: Scaffold(
//            body: SingleChildScrollView(
//              child: Container(
//                padding: EdgeInsets.all(40.0),
//                child: Form(
//                  key: formKey,
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      SizedBox(height: 15.0,),
//                      Text("Email"),
//                      SizedBox(height: 5.0,),
//                      TextFormField(
//                        autofocus: false,
//                        validator: validateEmail,
//                        onSaved: (value)=> _userName = value!,
//                        decoration: buildInputDecoration('Enter Email',Icons.email),
//                      ),
//                      SizedBox(height: 20.0,),
//                      Text("Password"),
//                      SizedBox(height: 5.0,),
//                      TextFormField(
//                        autofocus: false,
//                        obscureText: true,
//                        validator: (value)=> value!.isEmpty?"Please enter password":null,
//                        onSaved: (value)=> _password = value!,
//                        decoration: buildInputDecoration('Enter Password',Icons.lock),
//                      ),
//                      SizedBox(height: 20.0,),
//
//                      SizedBox(height: 8.0,),
//
//
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          // appBar: AppBar(
//          //   backgroundColor: Colors.white,
//          //   leading: IconButton(
//          //     onPressed: () {
//          //       Navigator.pop(context);
//          //     },
//          //     icon: Icon(Icons.arrow_back,color: Colors.black,),
//          //   ),
//          //   title: Text('Login via Email',  style: TextStyle(color: Colors.black),),
//          // ),
//
//
//
//
//
//
//
// //     body:
// //     Container(child: Column(children: [
// //       Padding(
// //         padding: const EdgeInsets.all(25.0),
// //         child: Text(
// //           'Input your credentials',
// //           style: TextStyle(
// //             fontWeight: FontWeight.bold,
// //             fontSize: 20.0,
// //             color: Colors.black,
// //           ),
// //         ),
// //       ),
// //     ],
// //
// //     ) ,
// //
// //     )
// //
// //        ),
// //      ),
// //    );
// //   }
// //
// // }
//
//        ),),);
//     }
// }