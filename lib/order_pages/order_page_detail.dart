import 'package:flutter/material.dart';
class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child:
            Container(
             height: 310.0,
             width: MediaQuery.of(context).size.width/3,
             color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                        RichText(text: TextSpan(text: "Order#1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
                            children: <TextSpan>[
                        TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins')),
                      ]
                  ),
            ),
                  ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0.0, left: 45.0),
                            height: 35.0,
                            width: 35.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/girl1.jpeg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0.0,left: 15.0),
                            child: Text("Samantha M",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 12,fontFamily: 'Poppins'),
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Container(
                              margin: EdgeInsets.only(left: 13.0),
                              child: Text("User from 2020",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Poppins'),))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30.0,),
                  Divider(
                    color: Colors.grey.shade300,
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 10.0,),
                 Container(
                     margin: EdgeInsets.only(right: 200.0),
                     child: Text("Delivery Address",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
                     Row(
                       children: [
                         Container(
                             margin: EdgeInsets.only(right: 0.0,top: 5.0),
                             child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                             Container(
                               margin: EdgeInsets.only(top: 5.0),
                                 child: Text("Elim Street, 23",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),))
                       ],
                     ),
                       Container(
                           margin: EdgeInsets.only(right: 90.0,top: 5.0),
                           child: Text("Lorem ipsu, dolor sit amet,\nelit, sed do eiusmod tempor incididnut.",style: TextStyle(color: Colors.grey,fontSize: 10,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w300))),
                         Row(
                           children: [
                             Column(
                               children: [
                                 Container(
                                     margin: EdgeInsets.only(left: 6.0,top: 15.0),
                                     child: Text("Estimation Time",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
                                 Container(
                                     margin: EdgeInsets.only(right: 35.0,top: 5.0),
                                     child: Text("10 min",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',fontSize: 10),)),
                               ],
                             ),
                             Column(
                               children: [
                                 Container(
                                     margin: EdgeInsets.only(left: 80.0,top: 15.0),
                                     child: Text("Payment",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
                                   Container(
                                       margin: EdgeInsets.only(left: 85.0,top: 5.0),
                                       child: Text("E-Wallet",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',fontSize: 10),)),
                               ],
                             ),
                           ],
                         ),
                  SizedBox(height: 0.0,),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10.0,top: 15.0),
                              child: Text("Distance",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
                          Container(
                              margin: EdgeInsets.only(left: 10.0,top: 5.0),
                              child: Text("2.5 km",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',fontSize: 10),)),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 120.0,top: 15.0),
                              child: Text("Payment Status",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
                          Container(
                              margin: EdgeInsets.only(left: 105.0,top: 5.0),
                              child: Text("Completed",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft',fontSize: 10),)),
                        ],
                      ),
                    ],
                  ),
                       ],
                       ),
                      ),
                  ),
        Expanded(
            child: Container(
                height: 310.0,
                width: 300.0,
                color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.0,left: 50.0),
                        height: 40.0,
                        width: 50.0,
                        color: Colors.white,
                        child: Image.asset("assets/images/pizza1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text("Pepproni Pizza",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                      margin: EdgeInsets.only(left: 40.0,top: 0.0),
                         child: RichText(text: TextSpan(
                          text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),
                             children: <TextSpan>[
                           TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                          ),
                        TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                     ]
                   )),
              )
                    ],
               ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.0,left: 50.0),
                        height: 40.0,
                        width: 50.0,
                        color: Colors.white,
                        child: Image.asset("assets/images/burger1.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text("Cheese Burger",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40.0,top: 0.0),
                        child: RichText(text: TextSpan(
                            text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),
                            children: <TextSpan>[
                              TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'RenogareSoft'),
                              ),
                              TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11,fontFamily: 'RenogareSoft'),),
                            ]
                        )),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Divider(
                      color: Colors.grey.shade300,
                      indent: 20.0,
                      endIndent: 20.0,
                      thickness: 1.0,
                    ),
                  ),
                  SizedBox(height: 0.0,),
                  Container(
                    margin: EdgeInsets.only(right: 80.0,top: 10.0),
                    child: Text("Total",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 230.0,bottom: 0.0),
                    child: RichText(text: TextSpan(
                        text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 13,fontFamily: 'RenogareSoft'),
                          ),
                          TextSpan(text: "12.59",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,fontFamily: 'RenogareSoft'),),
                        ]
                    )),
                  ),

                ],
              ),
              ),
        ),
      ],
    ),
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0,bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Order is Rejected'),
                      duration: Duration(seconds: 3),
                    ),
                  );

                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: BorderSide(color: Colors.red),
                  minimumSize: Size(130.0, 40.0),
                ),
                child: Text(
                  "Reject Order",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              margin: EdgeInsets.only(left: 15.0,bottom: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Order Accepted Successfully'),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amberAccent,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: BorderSide(color: Colors.amber),
                  minimumSize: Size(130.0, 40.0),
                ),
                child: Text(
                  "Accept Order",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),

    ],
    );
  }
}
