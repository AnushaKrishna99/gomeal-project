import 'package:flutter/material.dart';

class MenuPages extends StatefulWidget {
  const MenuPages({super.key});

  @override
  State<MenuPages> createState() => _MenuPagesState();
}

class _MenuPagesState extends State<MenuPages> {
  int selectedContainer = 1;

  String selectedItem = 'Recently' ;
  List  items = [
    'Recently',
    'Previous',
    'Old one'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          height: 800.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:40.0,left: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Notification",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.dining_outlined, color: Colors.black),
                            SizedBox(width: 10.0,),
                            Icon(Icons.notifications_none, color: Colors.black),
                            SizedBox(width: 10.0,),
                            Icon(Icons.settings, color: Colors.black),],
                        ),
                      ),

                      Row(
                        children: [
                          SizedBox(width: 40.0,),
                          Container(
                            margin: EdgeInsets.only(right: 30.0,top: 20.0),
                            height: 35.0,
                            width: 35.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Image.asset("assets/images/driver.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                height : 600.0,
                width: 990.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  selectedContainer = 1;
                                });
                              },

                              child: Container(
                                padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                margin: EdgeInsets.only(left: 30.0,top: 20.0),
                                height: 30.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  color: selectedContainer == 1 ? Colors.amberAccent : Colors.grey.shade200,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                  ),
                                ),
                                child: Text("Activity",style: TextStyle(
                                  color: selectedContainer == 1 ? Colors.white : Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'RenogareSoft',
                                  fontSize: 10,
                                ),),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  selectedContainer = 2;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                margin: EdgeInsets.only(top: 20.0,),
                                height: 30.0,
                                width: 87.0,
                                decoration: BoxDecoration(
                                  color: selectedContainer == 2 ? Colors.amberAccent : Colors.grey.shade200,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                  ),
                                ),
                                child: Text("Notification",style: TextStyle(
                                  color: selectedContainer == 2 ? Colors.white : Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'RenogareSoft',
                                  fontSize: 10,
                                ),
                                ),
                              ),
                            ),
                            ],
                        ),
                            Row(
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 110.0,
                                  margin: EdgeInsets.only(right: 30.0,top: 15.0),
                                  padding: EdgeInsets.only(left: 20.0),
                                  decoration: BoxDecoration(
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
                                                       fontFamily: 'RenogareSoft',
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
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10.0,top: 5.0),
                                        child: Icon(Icons.more_horiz_outlined,color: Colors.grey,)),
                                  ],
                                ),
                              ],
                            ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(right: 860.0),
                      child: Text("Today",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RenogareSoft'),),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                          color: Color(0xfffbb830),
                          borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.dining,color: Colors.white,),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 258.0),
                                child: Text("Order#1",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            Container(
                                margin: EdgeInsets.only(right: 145.0),
                              child: Text("Order Accepted by restuarants",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                            Container(
                              margin: EdgeInsets.only(left: 38.0),
                              child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 380.0),
                          child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40.0),
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Icon(Icons.dining,color: Colors.white,),
                            ),
                            SizedBox(width: 10.0,),
                            Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 278.0),
                                    child: Text("Offer",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                                Container(
                                    margin: EdgeInsets.only(right: 145.0),
                                    child: Text("Order Accepted by restuarants",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                                Container(
                                  margin: EdgeInsets.only(left: 38.0),
                                  child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                      style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 380.0),
                              child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.notifications,color: Colors.white,),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 258.0),
                                child: Text("Update",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            Container(
                                margin: EdgeInsets.only(right: 145.0),
                                child: Text("Weekly maintainnce Schedule",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                            Container(
                              margin: EdgeInsets.only(left: 38.0),
                              child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                  style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 380.0),
                          child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.dining,color: Colors.white,),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 258.0),
                                child: Text("Order#1",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            Container(
                                margin: EdgeInsets.only(right: 145.0),
                                child: Text("Order Accepted by restuarants",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                            Container(
                              margin: EdgeInsets.only(left: 38.0),
                              child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                  style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 380.0),
                          child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                        )
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Container(
                      margin: EdgeInsets.only(right: 820.0),
                      child: Text("Yesterday",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RenogareSoft'),),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.dining,color: Colors.white,),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 258.0),
                                child: Text("Order#1",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            Container(
                                margin: EdgeInsets.only(right: 145.0),
                                child: Text("Order Accepted by restuarants",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                            Container(
                              margin: EdgeInsets.only(left: 38.0),
                              child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                  style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 380.0),
                          child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Icon(Icons.dining,color: Colors.white,),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 278.0),
                                child: Text("Offer",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            Container(
                                margin: EdgeInsets.only(right: 145.0),
                                child: Text("Order Accepted by restuarants",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins'),)),
                            Container(
                              margin: EdgeInsets.only(left: 38.0),
                              child: Text("Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed do eiusmod tempor.",
                                  style: TextStyle(color: Colors.grey.shade500,fontSize: 8,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 380.0),
                          child: Text("Monday, June 31 2020",style: TextStyle(color: Colors.grey.shade500,fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'Poppins',)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
