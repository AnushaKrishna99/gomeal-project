import 'package:flutter/material.dart';

import '../allfiles/search_page.dart';

class CompletedOrdersScreen extends StatefulWidget {
  const CompletedOrdersScreen({super.key});

  @override
  State<CompletedOrdersScreen> createState() => _CompletedOrdersScreenState();
}

class _CompletedOrdersScreenState extends State<CompletedOrdersScreen> {
  bool isVisible = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
      child: Container(
      height: 1200.00,
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
                        "Order History",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'RenogareSoft',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 320.0,bottom: 28.0),
                          child: SearchBars(hintText: 'Search by restuarant or dish..', width: 450,height: 50,)),
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
                            InkWell(
                              onTap: () {
                                // Handle the click event for the first icon here
                              },
                              child: Icon(Icons.dining_outlined, color: Colors.black),
                            ),
                            SizedBox(width: 10.0),
                            InkWell(
                              onTap: () {
                                // Handle the click event for the second icon here
                              },
                              child: Icon(Icons.notifications_none, color: Colors.black),
                            ),
                            SizedBox(width: 10.0),
                            InkWell(
                              onTap: () {
                                // Handle the click event for the third icon here
                              },
                              child: Icon(Icons.settings, color: Colors.black),
                            ),
                          ],
                        )

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
              margin: EdgeInsets.only(left: 20.0),
              height: 235.0,
              width: 970.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/food1.jpg",
                      height: 235.0,
                      width: 970.0,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 25.0,
                      left: 40.0,
                      child:  RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "SLYS ORDER HISTORY\n",
                              style: TextStyle(
                                  fontFamily: 'Mitr',
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: "\n\nLoern ipusm sit amet,consecteture adipiscing elit,sed do\nelusmod tempor incident",
                              style: TextStyle(
                                  fontFamily: 'Cabin',
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),

                      ),
                    ),
                    Positioned(
                      top: 145.0,
                        left: 20.0,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: (){},
                                child: Icon(Icons.person,color: Colors.white,size: 50.0,)),
                            Container(
                              margin: EdgeInsets.only(left: 20.0),
                              height: 30.0,
                              width: 110.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text("Edit Profile",style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                  )
                              ),
                            ),

                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 240.0),
                          height: 300.0,
                          width: 400.0,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(8.0),
                           border: Border.all(color: Colors.grey.withOpacity(0.3),),
                         ),
                          child:   Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 30.0, left: 20.0),
                                        height: 55.0,
                                        width: 55.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "assets/images/rest1.jpeg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 40.0,right: 30.0),
                                        child: Text("Eats of Arab",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Container(
                                          margin: EdgeInsets.only(left: 20.0),
                                          child: Text("Chikkamagalur Locality",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Poppins'),))
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90.0,top: 20.0),
                                    child: Text("Delivered",style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Divider(
                                color: Colors.grey.shade300,
                                indent: 20.0,
                                endIndent: 20.0,
                                thickness: 1.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("ORDER NUMBER",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                    ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 280.0),
                                child: Text("55674347891",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("TOTAL AMOUNT",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("\$ ",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0.0),
                                    child: Text("5.99",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 320.0),
                                child: Text("ITEMS",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("1 Chicken Kabab",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 290.0),
                                child: Text("ORDER ON",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("September 2 , 2023 at 02:30 PM",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 65.0),
                                    height: 30.0,
                                    width: 110.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.withOpacity(0.3),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextButton(
                                      onPressed: (){
                                      },
                                      child: Text("View Details",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins')),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          height: 300.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.withOpacity(0.3),),
                          ),
                           child:  Column(
                             children: [
                               Row(
                                 children: [
                                   Column(
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 30.0, left: 20.0),
                                         height: 55.0,
                                         width: 55.0,
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(10.0),
                                           child: Image.asset(
                                             "assets/images/rest2.jpg",
                                             fit: BoxFit.cover,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                   Column(
                                     children: [
                                       Container(
                                         margin: EdgeInsets.only(top: 40.0,right: 30.0),
                                         child: Text("Eats of Arab",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12,fontFamily: 'Poppins'),
                                         ),
                                       ),
                                       SizedBox(height: 3.0,),
                                       Container(
                                           margin: EdgeInsets.only(left: 20.0),
                                           child: Text("Chikkamagalur Locality",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Poppins'),))
                                     ],
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 90.0,top: 20.0),
                                     child: Text("Delivered",style: TextStyle(
                                         fontFamily: 'Poppins',
                                         color: Colors.black,
                                         fontSize: 12,
                                         fontWeight: FontWeight.normal),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 8.0,),
                               Divider(
                                 color: Colors.grey.shade300,
                                 indent: 20.0,
                                 endIndent: 20.0,
                                 thickness: 1.0,
                               ),
                               Container(
                                 margin: EdgeInsets.only(right: 260.0),
                                 child: Text("ORDER NUMBER",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(right: 280.0),
                                 child: Text("55674347891",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                 ),
                               ),
                               SizedBox(height: 8.0,),
                               Container(
                                 margin: EdgeInsets.only(right: 260.0),
                                 child: Text("TOTAL AMOUNT",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                 ),
                               ),
                               Row(
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 20.0),
                                     child: Text("\$ ",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins'),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(right: 0.0),
                                     child: Text("5.99",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins'),
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(height: 8.0,),
                               Container(
                                 margin: EdgeInsets.only(right: 320.0),
                                 child: Text("ITEMS",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                 ),
                               ),
                               Container(
                                 margin: EdgeInsets.only(right: 260.0),
                                 child: Text("1 Chicken Kabab",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                 ),
                               ),
                               SizedBox(height: 8.0,),
                               Container(
                                 margin: EdgeInsets.only(right: 290.0),
                                 child: Text("ORDER ON",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                 ),
                               ),
                               Row(
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 20.0),
                                     child: Text("September 2 , 2023 at 02:30 PM",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 65.0),
                                     height: 30.0,
                                     width: 110.0,
                                     decoration: BoxDecoration(
                                       color: Colors.white,
                                       border: Border.all(color: Colors.grey.withOpacity(0.3),
                                       ),
                                       borderRadius: BorderRadius.circular(5.0),
                                     ),
                                     child: TextButton(
                                       onPressed: (){},
                                       child: Text("View Details",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins')),
                                     ),
                                   )
                                 ],
                               ),
                             ],
                           ),
                        ),
                      ],
                    ),
                  ],
                  ),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 240.0),
                          height: 300.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.withOpacity(0.3),),
                          ),
                          child:   Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 30.0, left: 20.0),
                                        height: 55.0,
                                        width: 55.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "assets/images/rest3.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 40.0,right: 30.0),
                                        child: Text("Eats of Arab",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Container(
                                          margin: EdgeInsets.only(left: 20.0),
                                          child: Text("Chikkamagalur Locality",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Poppins'),))
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90.0,top: 20.0),
                                    child: Text("Delivered",style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Divider(
                                color: Colors.grey.shade300,
                                indent: 20.0,
                                endIndent: 20.0,
                                thickness: 1.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("ORDER NUMBER",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 280.0),
                                child: Text("55674347891",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("TOTAL AMOUNT",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("\$ ",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0.0),
                                    child: Text("5.99",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 320.0),
                                child: Text("ITEMS",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("1 Chicken Kabab",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 290.0),
                                child: Text("ORDER ON",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("September 2 , 2023 at 02:30 PM",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 65.0),
                                    height: 30.0,
                                    width: 110.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.withOpacity(0.3),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextButton(
                                      onPressed: (){},
                                      child: Text("View Details",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins')),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30.0),
                          height: 300.0,
                          width: 400.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.withOpacity(0.3),),
                          ),
                          child:  Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 30.0, left: 20.0),
                                        height: 55.0,
                                        width: 55.0,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: Image.asset(
                                            "assets/images/rest4.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 40.0,right: 30.0),
                                        child: Text("Eats of Arab",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Container(
                                          margin: EdgeInsets.only(left: 20.0),
                                          child: Text("Chikkamagalur Locality",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Poppins'),))
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 90.0,top: 20.0),
                                    child: Text("Delivered",style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Divider(
                                color: Colors.grey.shade300,
                                indent: 20.0,
                                endIndent: 20.0,
                                thickness: 1.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("ORDER NUMBER",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 280.0),
                                child: Text("55674347891",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("TOTAL AMOUNT",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("\$ ",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 0.0),
                                    child: Text("5.99",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 320.0),
                                child: Text("ITEMS",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 260.0),
                                child: Text("1 Chicken Kabab",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                ),
                              ),
                              SizedBox(height: 8.0,),
                              Container(
                                margin: EdgeInsets.only(right: 290.0),
                                child: Text("ORDER ON",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text("September 2 , 2023 at 02:30 PM",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 65.0),
                                    height: 30.0,
                                    width: 110.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey.withOpacity(0.3),
                                      ),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextButton(
                                      onPressed: (){},
                                      child: Text("View Details",style: TextStyle(color: Colors.amber,fontSize: 12,fontFamily: 'Poppins')),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
              ],
            ),
        ),
        ),
      );
  }
}


