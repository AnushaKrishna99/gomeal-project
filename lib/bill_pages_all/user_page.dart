import 'package:flutter/material.dart';

import 'completed_order_screen.dart';
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  String selectedItem = 'Latest' ;
  List  items = [
    'Latest',
    'Modern',
    'Old one'
  ];
  String selectedRatings = 'All Ratings' ;
  List ratings = [
    'All Ratings',
    'two',
    'two',
    'three'
  ];

  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;


  void toggleContainer1() {
    setState(() {
      isExpanded1 = !isExpanded1;
      isExpanded2 = false;
      isExpanded3 = false;
      isExpanded4 = false;
    });
  }
  void toggleContainer2() {
    setState(() {
      isExpanded1 = false;
      isExpanded2 = !isExpanded2;
      isExpanded3 = false;
      isExpanded4 = false;
    });
  }
  void toggleContainer3() {
    setState(() {
      isExpanded1 = false;
      isExpanded2 = false;
      isExpanded3 = !isExpanded3;
      isExpanded4 = false;
    });
  }
  void toggleContainer4() {
    setState(() {
      isExpanded1 = false;
      isExpanded2 = false;
      isExpanded3 = false;
      isExpanded4 = !isExpanded4;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.0,top: 20.0),
              child: Row(
                children: [
                  Text("Order History",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'RenogareSoft',
                    ),
                  ),
                ],),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 25.0,
              width: 100.0,
              margin: EdgeInsets.only(left: 655.0,top: 30.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  DropdownButton<String>(
                    underline: SizedBox(),
                    value: selectedItem,
                    onChanged: (newValue){
                      setState(() {
                        selectedItem = newValue!;
                      });
                    },

                    items: items.map((item){
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            Text(item,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10.0,),
            Container(
              height: 25.0,
              width: 108.0,
              margin: EdgeInsets.only(right: 25.0,top: 30.0),
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  DropdownButton<String>(
                    underline: SizedBox(),
                    value: selectedRatings,
                    onChanged: (newValue){
                      setState(() {
                        selectedRatings = newValue!;
                      });
                    },

                    items: ratings.map((item){
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            Text(item,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 10
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(width: 4.0,),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Column(
          children: [
            Container(
              height: isExpanded1 ? 250.0 : 80.0,
              width: 990.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListView(
                children: [
                 GestureDetector(
                   onTap: toggleContainer1,
                   child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0,top: 20.0),
                        child: RichText(text: TextSpan(text: "Order #1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins'
                            )),

                          ],
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 20.0),
                        height: 35.0,
                        width: 35.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/boy2.jpeg",
                            fit: BoxFit.cover,                   ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0,top: 20.0),
                        child: RichText(text: TextSpan(text: "Ruby Rohan\n",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                          children: <TextSpan>[
                            TextSpan(text: "\User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),
                            ),
                          ],
                        ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 26.0,left: 30.0),
                            child: Text("Total",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'RenogareSoft',
                            ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 44.0,top: 0.0),
                              child: RichText(text: TextSpan(
                                  text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                                    ),
                                    TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                                  ]
                              ))
                          ),
                        ],
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25.0,right: 46.0),
                            child: Text("Resturant",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'RenogareSoft',
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0.0,left: 45.0),
                            child: Text("Fast Food Rastuarant",style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'RenogareSoft',
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25.0,right: 11.0),
                            child: Text("Address",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                              fontFamily: 'RenogareSoft',
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0.0,left: 25.0),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 16.0,bottom: 2.0),
                                    child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                                Container(
                                  margin: EdgeInsets.only(left: 0.0),
                                  child: Text("Elim Street, 23",
                                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 40.0,),
                      Container(
                        margin: EdgeInsets.only(top: 25.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CompletedOrdersScreen()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green.withOpacity(0.1)), // Background color
                            foregroundColor: MaterialStateProperty.all(Colors.green.shade200), // Text color
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0),
                                side: BorderSide(color: Colors.green),
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.only(top: 5.0, left: 16.0), // Padding around the text
                            ),
                          ),
                          child: Container(
                            width: 90.0,
                            child: Text(
                              "Completed",
                              style: TextStyle(
                                fontFamily: 'RenogareSoft',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 50.0,),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Icon(
                          isExpanded1 ? Icons.expand_less : Icons.expand_more,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10.0,),

                    ],
                ),
                 ),
                  SizedBox(height: 10.0,),
                  Visibility(
                    visible: isExpanded1,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:20.0,bottom: 90.0),
                              child: Text("Order History",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'RenogareSoft',
                                ),
                              ),
                            ),
                            SizedBox(width: 30.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40.0,right: 80.0),
                                  child: Text("Order Menu",style: TextStyle(color: Colors.black,fontFamily: 'RenogareSoft',fontSize: 13),),
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/pizza1.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Pepproni Pizza",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/burger1.jpeg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Cheese Burger",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.59",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 35.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 50.0),
                                  child: Text("Payment Method",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20.0,top: 5.0),
                                  child: Text("Cash",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'RenogareSoft',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,right: 20.0),
                                  child: Text("Total",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 0.0,top: 5.0),
                                    child: RichText(text: TextSpan(
                                        text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 13,fontFamily: 'RenogareSoft'),
                                          ),
                                          TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'RenogareSoft'),),
                                        ]
                                    ))
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
               ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: isExpanded2 ? 250.0 : 80.0,
              width: 990.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListView(
                children: [
                 Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 20.0),
                      child: RichText(text: TextSpan(text: "Order #2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins'
                          )),

                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      margin: EdgeInsets.only(left: 30.0,top: 20.0),
                      height: 35.0,
                      width: 35.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/images/girl1.jpeg",
                          fit: BoxFit.cover,                   ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top:20.0),
                      child: RichText(text: TextSpan(text: "Ruby Robin\n",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                        children: <TextSpan>[
                          TextSpan(text: "\User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),
                          ),
                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 26.0,left: 30.0),
                          child: Text("Total",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 44.0,top: 0.0),
                            child: RichText(text: TextSpan(
                                text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                                  ),
                                  TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                                ]
                            ))
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 46.0),
                          child: Text("Resturant",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 45.0),
                          child: Text("Fast Food Rastuarant",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 11.0),
                          child: Text("Address",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 25.0),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 16.0,bottom: 2.0),
                                  child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                              Container(
                                margin: EdgeInsets.only(left: 0.0),
                                child: Text("Elim Street, 23",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Container(
                      margin: EdgeInsets.only(top:20.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the button press
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.amber.withOpacity(0.1)), // Background color
                          foregroundColor: MaterialStateProperty.all(Colors.amber.shade200), // Text color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              side: BorderSide(color: Colors.amber),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(top: 5.0, left: 16.0), // Padding around the text
                          ),
                        ),
                        child: Container(
                          width: 90.0,
                          child: Text(
                            "Delevering",
                            style: TextStyle(
                              fontFamily: 'RenogareSoft',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 50.0,),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: toggleContainer2,
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(
                            isExpanded2 ? Icons.expand_less : Icons.expand_more,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 10.0,),
                  Visibility(
                    visible: isExpanded2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:20.0,bottom: 90.0),
                              child: Text("Order History",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'RenogareSoft',
                                ),
                              ),
                            ),
                            SizedBox(width: 30.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40.0,right: 80.0),
                                  child: Text("Order Menu",style: TextStyle(color: Colors.black,fontFamily: 'RenogareSoft',fontSize: 13),),
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/pizza1.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Pepproni Pizza",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/burger1.jpeg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Cheese Burger",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.59",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 35.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 50.0),
                                  child: Text("Payment Method",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20.0,top: 5.0),
                                  child: Text("Cash",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'RenogareSoft',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,right: 20.0),
                                  child: Text("Total",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 0.0,top: 5.0),
                                    child: RichText(text: TextSpan(
                                        text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 13,fontFamily: 'RenogareSoft'),
                                          ),
                                          TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'RenogareSoft'),),
                                        ]
                                    ))
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
               ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: isExpanded3 ? 250.0 : 80.0,
              width: 990.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListView(
                children: [
                 Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 20.0),
                      child: RichText(text: TextSpan(text: "Order #2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(text: "\June 5,2020,09:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins'
                          )),

                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      margin: EdgeInsets.only(left: 30.0,top: 20.0),
                      height: 35.0,
                      width: 35.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/images/boy1.jpeg",
                          fit: BoxFit.cover,                   ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 20.0),
                      child: RichText(text: TextSpan(text: "Jhon Jack\n",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                        children: <TextSpan>[
                          TextSpan(text: "\User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),
                          ),
                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 26.0,left: 30.0),
                          child: Text("Total",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 44.0,top: 0.0),
                            child: RichText(text: TextSpan(
                                text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                                  ),
                                  TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                                ]
                            ))
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 46.0),
                          child: Text("Resturant",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 45.0),
                          child: Text("Fast Food Rastuarant",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 11.0),
                          child: Text("Address",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 25.0),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 16.0,bottom: 2.0),
                                  child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                              Container(
                                margin: EdgeInsets.only(left: 0.0),
                                child: Text("Elim Street, 23",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the button press
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green.withOpacity(0.1)), // Background color
                          foregroundColor: MaterialStateProperty.all(Colors.green.shade200), // Text color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              side: BorderSide(color: Colors.green),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(top: 5.0, left: 16.0), // Padding around the text
                          ),
                        ),
                        child: Container(
                          width: 90.0,
                          child: Text(
                            "Completed",
                            style: TextStyle(
                              fontFamily: 'RenogareSoft',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 50.0,),
                    InkWell(
                      onTap: toggleContainer3,
                      child: Container(
                      margin: EdgeInsets.only(top:20.0),
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Icon(
                          isExpanded3 ? Icons.expand_less : Icons.expand_more,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),

                  SizedBox(height: 10.0,),
                  Visibility(
                    visible: isExpanded3,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:20.0,bottom: 90.0),
                              child: Text("Order History",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'RenogareSoft',
                                ),
                              ),
                            ),
                            SizedBox(width: 30.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40.0,right: 80.0),
                                  child: Text("Order Menu",style: TextStyle(color: Colors.black,fontFamily: 'RenogareSoft',fontSize: 13),),
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/pizza1.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Pepproni Pizza",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.0,),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                                      height: 30.0,
                                      width: 30.0,
                                      color: Colors.white,
                                      child: Image.asset("assets/images/burger1.jpeg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text("Cheese Burger",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 30.0,top: 0.0),
                                      child: RichText(text: TextSpan(
                                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                                          children: <TextSpan>[
                                            TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontSize: 9,fontFamily: 'RenogareSoft'),
                                            ),
                                            TextSpan(text: "5.59",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'RenogareSoft'),),
                                          ]
                                      )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 35.0,),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 50.0),
                                  child: Text("Payment Method",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 20.0,top: 5.0),
                                  child: Text("Cash",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'RenogareSoft',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,right: 20.0),
                                  child: Text("Total",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'RenogareSoft',
                                  ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 0.0,top: 5.0),
                                    child: RichText(text: TextSpan(
                                        text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 13,fontFamily: 'RenogareSoft'),
                                          ),
                                          TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'RenogareSoft'),),
                                        ]
                                    ))
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: isExpanded4 ? 250.0 : 80.0,
              width: 990.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListView(
                children:[
                 Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 20.0),
                      child: RichText(text: TextSpan(text: "Order #4\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins'
                          )),

                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      margin: EdgeInsets.only(left: 30.0,top: 20.0),
                      height: 35.0,
                      width: 35.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/images/girl2.jpeg",
                          fit: BoxFit.cover,                   ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0,top: 20.0),
                      child: RichText(text: TextSpan(text: "Samantha N\n",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                        children: <TextSpan>[
                          TextSpan(text: "\User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),
                          ),
                        ],
                      ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 26.0,left: 30.0),
                          child: Text("Total",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 44.0,top: 0.0),
                            child: RichText(text: TextSpan(
                                text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                                  ),
                                  TextSpan(text: "202.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                                ]
                            ))
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0,),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 46.0),
                          child: Text("Resturant",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 45.0),
                          child: Text("Fast Food Rastuarant",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25.0,right: 11.0),
                          child: Text("Address",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'RenogareSoft',
                          ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0,left: 25.0),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 16.0,bottom: 2.0),
                                  child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                              Container(
                                margin: EdgeInsets.only(left: 0.0),
                                child: Text("Elim Street, 23",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Container(
                      margin: EdgeInsets.only(top:20.0),
                      child: TextButton(
                        onPressed: () {
                          // Handle the button press
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red.withOpacity(0.1)), // Background color
                          foregroundColor: MaterialStateProperty.all(Colors.redAccent.shade200), // Text color
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                              side: BorderSide(color: Colors.red),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.only(top: 5.0, left: 16.0), // Padding around the text
                          ),
                        ),
                        child: Container(
                          width: 90.0,
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                              fontFamily: 'RenogareSoft',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 50.0,),
                    InkWell(
                      onTap: toggleContainer4,
                      child: Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Icon(
                          isExpanded4 ? Icons.expand_less : Icons.expand_more,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
