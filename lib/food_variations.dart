import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodeck/cart.dart';
import './FirstScreen.dart';
import './SecondScreen.dart';


class food_variations_Page extends StatefulWidget {
  @override
  food_variationsState createState() => food_variationsState();
}
enum Pet { dog, cat,animal }

class food_variationsState extends State<food_variations_Page> {
  String dropdownvalue = 'Remove it from my order';

  // List of items in our dropdown menu
  var items = [
    'Remove it from my order',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  bool valuefirst = false;
  bool valuesecond = false;

  bool _checkbox = false;
  int _itemCount = 0;
  Pet _pet = Pet.dog;
  Pet _cat = Pet.cat;
  Pet _animal = Pet.animal;
  String s = "\$10";
  String six = "\$6";
  String twel = "\$12";
  String twothree = "\$23";
  String onesix = "\$16";
  String eight = "\$8";

  int _radioValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _radioValue = value!;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(

              child: Column(children: <Widget>[
                Stack(
                  children: [
                    Image.asset('assets/img_17.png',    fit: BoxFit.fill,width: 500,height: 180,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 110),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chicken Fajita Pizza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22,color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Text(
                              "Daily Deli - Johar Town",
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

                //variation
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                  child: Row(children: [

                     Text(
                      "Variation",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      "Required",
                      style: TextStyle(fontSize: 17,color: Colors.white10),
                    ),
                  ],),
                ),
                   Padding(
                     padding: EdgeInsets.symmetric(vertical: 0.0, horizontal:15.0),
                     child: Container(
                       child: Row(
                         children: [
                           new Radio(
                             value: 0,
                             groupValue: _radioValue,
                             activeColor: Colors.pink,
                             onChanged: _handleRadioValueChange,
                           ),

                           Text('8"',style:TextStyle(fontSize: 17,color: Colors.black)),
                           Spacer(),
                           Text("$s",style:TextStyle(fontSize: 17,color: Colors.grey)),
                         ],
                       ),

                     ),

                   ),
                Divider(
                    color: Colors.grey,
                  height: 0,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal:15.0),
                  child: Container(
                    child: Row(
                      children: [
                        new Radio(
                          value: 1,
                          activeColor: Colors.pink,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),

                        Text('10"',style:TextStyle(fontSize: 17,color: Colors.black)),
                        Spacer(),
                        Text("$twel",style:TextStyle(fontSize: 17,color: Colors.grey)),
                      ],
                    ),

                  ),

                ),
                Divider(
                    color: Colors.grey,
                  height: 5,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0, horizontal:15.0),
                  child: Container(
                    child: Row(
                      children: [
                        new Radio(
                          value: 2,
                          activeColor: Colors.pink,
                          groupValue: _radioValue,
                          onChanged: _handleRadioValueChange,
                        ),

                        Text('12"',style:TextStyle(fontSize: 17,color: Colors.black)),
                        Spacer(),
                        Text("$onesix",style:TextStyle(fontSize: 17,color: Colors.grey)),
                      ],
                    ),

                  ),

                ),
                Divider(
                    color: Color(0xffF2F2F7),
                  height: 10,
                  thickness: 5,

                ),


                //quantity

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

                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal:25.0,),
                  child: Container(
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(45.0),
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove,color: Colors.pinkAccent,),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                        Spacer(),
                        new Text(_itemCount.toString(),  style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17,color: Colors.black),),
                        Spacer(),
                        new IconButton(icon: new Icon(Icons.add,color: Colors.grey,),onPressed: ()=>setState(()=>_itemCount++))
                      ],
                    ),
                  ),
                ),

                Divider(
                  color: Color(0xffF2F2F7),
                  height: 5,
                  thickness: 5,

                ),

                Padding(
                  padding: const EdgeInsets.only(left: 28.0,top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Extra Sauce",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                    ),
                  ),
                ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:15.0),
            child: Column(children: [
              Row(
                children: [
                  // Checkbox(
                  //   activeColor: Colors.pinkAccent,
                  //   value: _checkbox,
                  //   checkColor: Colors.white,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _checkbox = !_checkbox;
                  //     });
                  //   },
                  // ),

                  Container(
                    width: 300,
                    child: CheckboxListTile(
                      activeColor: Colors.pinkAccent,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: const Text('Texas Barbeque',style:TextStyle(fontSize: 17,color: Colors.black)),
                      value: this.valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          this.valuefirst = value!;
                        });
                      },
                    ),
                  ),
                  Spacer(),
                  Text("\+$six",style:TextStyle(fontSize: 17,color: Colors.grey)),
                ],
              ),

              Row(
                children: [

                  Container(
                    width: 300,
                    child:    CheckboxListTile(
                    activeColor: Colors.pinkAccent,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text('Char Donay',style:TextStyle(fontSize: 17,color: Colors.black)),
                    value: this.valuesecond,
                    onChanged: (bool? value) {
                      setState(() {
                        this.valuesecond = value!;
                      });
                    },
                  ),
                  ),


                  Spacer(),
                  Text("\+$eight",style:TextStyle(fontSize: 17,color: Colors.grey)),
                ],
              ),
            ],),
          ),

                Divider(
                  color: Color(0xffF2F2F7),
                  height: 10,
                  thickness: 5,

                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Instructions",
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
                            hintText: 'e.g. less spices, no mayo etc',
                            hintStyle: TextStyle(fontSize: 17),

                          ),
                        ),
                      ),

                    ],),
                ),

                Divider(
                  color: Color(0xffF2F2F7),
                  height: 10,
                  thickness: 5,

                ),
                //droapdown
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:25.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "If the product is not available",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 5),



                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal:15.0),
                        child: Container(
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            shape: BoxShape.rectangle,
                            border: new Border.all(
                              color: Color(0xffF2F2F7),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal:15.0),
                            child: DropdownButton(
                              // Initial Value
                              value: dropdownvalue,
                              isExpanded: true,
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down),
                              // Array list of items
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will
                              // change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                              underline: DropdownButtonHideUnderline(child: Container()),
                            ),
                          ),
                        ),
                      ),


                    ],),
                ),


                //cash
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
                              Text("Add to cart",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17,
                                  )),

                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cartpage()
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