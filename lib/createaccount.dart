import 'package:flutter/material.dart';
import 'package:foodeck/login_via_email.dart';
import 'package:foodeck/validator.dart';
import 'package:foodeck/widgets.dart';


class createaccount extends StatefulWidget {
  @override
  createaccountstate createState() => createaccountstate();
}


class createaccountstate extends State<createaccount> {
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
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          title: Text('Create an account',  style: TextStyle(color: Colors.black),),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
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
                  SizedBox(height: 13.0,),
                  Text("Name"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onSaved: (value)=> _userName = value!,
                    decoration: buildInputDecoration('Enter Name'),
                  ),

                  SizedBox(height: 13.0,),
                  Text("Email"),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                    onSaved: (value)=> _userName = value!,
                    decoration: buildInputDecoration('Enter Email'),
                  ),
                  SizedBox(height: 13.0,),
                  Text("Phone No."),
                  SizedBox(height: 5.0,),
                  TextFormField(
                    autofocus: false,

                    keyboardType: TextInputType.phone,
                    validator: validateEmail,
                    onSaved: (value)=> _userName = value!,
                    decoration: buildInputDecoration('Enter Phone No'),
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

                  Text("Forgot Password?"),


                  SizedBox(
                    height: 13,
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
                            child: Text("Create an account",
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
                            child: Text("Login instead",
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
                      )
                      );
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => createaccount()
                      //
                      // )
                      // );

                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => createaccount(),
                      //   ),
                      //       (route) => false,
                      // );
                    },


                    // onTap: () {
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => loginviaemail()
                    //   )
                    //   );
                    // },


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