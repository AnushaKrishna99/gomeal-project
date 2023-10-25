import 'package:flutter/material.dart';
import 'package:gomeal/order_pages/order_page_detail.dart';

import '../responsive/responsive_builder.dart';


class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int selectedContainer = 1;
  int selectedContainer1 = 4;
  bool isorder1 = true;
  bool isorder2 = false;
  bool isorder3 = false;
  bool isorder4 = false;
  bool isorder5 = false;
  bool isorder6 = false;
  bool isorder7 = true;
  bool isorder8 = false;
  bool isorder9 = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobileBuilder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        children: [
          Container(
            height: 800.00,
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
                            "Orders",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'RenogareSoft',
                              // fontWeight: FontWeight.bold,
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
                Row(
                  children: [
                    if(isorder7)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 20.0,right: 180.0),
                                child: Text("Order in",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'RenogareSoft'),)),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer = 1;
                                      isorder7 = true;
                                      isorder8 = false;
                                      isorder9 = false;
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
                                    child: Text("order in",style: TextStyle(
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
                                      isorder7 = false;
                                      isorder8 = true;
                                      isorder9 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                    margin: EdgeInsets.only(top: 20.0,),
                                    height: 30.0,
                                    width: 80.0,
                                    color: selectedContainer == 2 ? Colors.amberAccent : Colors.grey.shade200,
                                    child: Text("Prepared",style: TextStyle(
                                      color: selectedContainer == 2 ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'RenogareSoft',
                                      fontSize: 10,
                                    ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer = 3;
                                      isorder7 = false;
                                      isorder8 = false;
                                      isorder9 = true;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                    margin: EdgeInsets.only(top: 20.0,),
                                    height: 30.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer == 3 ? Colors.amberAccent : Colors.grey.shade200,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Text("order out",style: TextStyle(
                                      color: selectedContainer == 3 ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'RenogareSoft',
                                      fontSize: 10,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0,),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 4;
                                      isorder1 = true;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 4 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 4 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 4 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 4 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 5;
                                      isorder1 = false;
                                      isorder2 = true;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = false;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 5 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 5 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 5 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 5 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 6;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = true;
                                      isorder4 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 6 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 6 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#3\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 6 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 6 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 7;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = true;
                                      isorder5 = false;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 7 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 7 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#4\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 7 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 7 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 8;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = true;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 8 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 8 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#5\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 8 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 8 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 9;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = false;
                                      isorder6 = true;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 9 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 9 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#6\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 9 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 9 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    if(isorder8)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),),
                    if(isorder9)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    SizedBox(width: 23.0,height: 30.0,),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      height: 650.0,
                      width: 670.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25.0,right: 500.0),
                              child: Text("Order Details",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                          SizedBox(height: 20.0,),
                          if(isorder1)
                            Container(
                              height: 510.0,
                              width: 590.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: OrderDetails(),
                            ),
                          if(isorder2)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder3)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder4)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder5)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder6)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          SizedBox(height: 20.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
      },
        tabletBuilder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        children: [
          Container(
            height: 800.00,
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
                            "Orders",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'RenogareSoft',
                              // fontWeight: FontWeight.bold,
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
                Row(
                  children: [
                    if(isorder7)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 20.0,right: 130.0),
                                child: Text("Order in",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'RenogareSoft'),)),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer = 1;
                                      isorder7 = true;
                                      isorder8 = false;
                                      isorder9 = false;
                                    });
                                  },

                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                    margin: EdgeInsets.only(left: 30.0,top: 20.0),
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/16,
                                    decoration: BoxDecoration(
                                      color: selectedContainer == 1 ? Colors.amberAccent : Colors.grey.shade200,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Text("order in",style: TextStyle(
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
                                      isorder7 = false;
                                      isorder8 = true;
                                      isorder9 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                    margin: EdgeInsets.only(top: 20.0,),
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/16,
                                    color: selectedContainer == 2 ? Colors.amberAccent : Colors.grey.shade200,
                                    child: Text("Prepared",style: TextStyle(
                                      color: selectedContainer == 2 ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'RenogareSoft',
                                      fontSize: 10,
                                    ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer = 3;
                                      isorder7 = false;
                                      isorder8 = false;
                                      isorder9 = true;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                    margin: EdgeInsets.only(top: 20.0,),
                                    height: 30.0,
                                    width: MediaQuery.of(context).size.width/16,
                                    decoration: BoxDecoration(
                                      color: selectedContainer == 3 ? Colors.amberAccent : Colors.grey.shade200,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Text("order out",style: TextStyle(
                                      color: selectedContainer == 3 ? Colors.white : Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'RenogareSoft',
                                      fontSize: 10,
                                    ),),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0,),
                            Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 4;
                                      isorder1 = true;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: MediaQuery.of(context).size.width/13,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 4 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 4 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 4 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 4 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 5;
                                      isorder1 = false;
                                      isorder2 = true;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = false;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 5 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 5 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 5 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 5 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 6;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = true;
                                      isorder4 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 6 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 6 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#3\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 6 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 6 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 7;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = true;
                                      isorder5 = false;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 7 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 7 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#4\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 7 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 7 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 8;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = true;
                                      isorder6 = false;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 8 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 8 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#5\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 8 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 8 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      selectedContainer1 = 9;
                                      isorder1 = false;
                                      isorder2 = false;
                                      isorder3 = false;
                                      isorder4 = false;
                                      isorder5 = false;
                                      isorder6 = true;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                    height: 60.0,
                                    width: 260.0,
                                    decoration: BoxDecoration(
                                      color: selectedContainer1 == 9 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                      border: Border.all(color: selectedContainer1 == 9 ? Colors.amber : Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(text: TextSpan(text: "Order#6\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                            children: <TextSpan>[
                                              TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                            ]
                                        ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(right: 10.0),
                                              child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                  color: Colors.amber,
                                                  fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                  children: <TextSpan>[
                                                    TextSpan(text: "\202.00",style: TextStyle(
                                                        color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                  ]
                                              ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(right: 20.0),
                                              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                              height: 20.0,
                                              width: 20.0,
                                              decoration: BoxDecoration(
                                                color: selectedContainer1 == 9 ? Colors.amber : Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              child: Center(
                                                child:Icon(Icons.chevron_right,
                                                  color:selectedContainer1 == 9 ? Colors.white : Colors.grey,
                                                  size: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    if(isorder8)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),),
                    if(isorder9)
                      Container(
                        margin: EdgeInsets.only(left: 30.0,top: 25.0),
                        height: 650.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    SizedBox(width: 23.0,height: 30.0,),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      height: 650.0,
                      width: 670.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 25.0,right: 500.0),
                              child: Text("Order Details",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                          SizedBox(height: 20.0,),
                          if(isorder1)
                            Container(
                              height: 510.0,
                              width: 590.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: OrderDetails(),
                            ),
                          if(isorder2)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder3)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder4)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder5)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          if(isorder6)
                            Container(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Container(
                                          height: 310.0,
                                          width: 295.0,
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
                                          margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                )
                            ),
                          SizedBox(height: 20.0,),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
      },
      desktopBuilder: (BuildContext context, BoxConstraints constraints){
        return Scaffold(
          backgroundColor: Colors.grey.shade100,
          body: SingleChildScrollView(
            child: Container(
              height: 800.00,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:40.0,left: 35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Orders",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'RenogareSoft',
                                // fontWeight: FontWeight.bold,
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
                  Row(
                    children: [
                      if(isorder7)
                        Container(
                          margin: EdgeInsets.only(left: 30.0,top: 25.0),
                          height: 650.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(top: 20.0,right: 180.0),
                                  child: Text("Order in",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600,fontFamily: 'RenogareSoft'),)),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer = 1;
                                        isorder7 = true;
                                        isorder8 = false;
                                        isorder9 = false;
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
                                      child: Text("order in",style: TextStyle(
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
                                        isorder7 = false;
                                        isorder8 = true;
                                        isorder9 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                      margin: EdgeInsets.only(top: 20.0,),
                                      height: 30.0,
                                      width: 80.0,
                                      color: selectedContainer == 2 ? Colors.amberAccent : Colors.grey.shade200,
                                      child: Text("Prepared",style: TextStyle(
                                        color: selectedContainer == 2 ? Colors.white : Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'RenogareSoft',
                                        fontSize: 10,
                                      ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer = 3;
                                        isorder7 = false;
                                        isorder8 = false;
                                        isorder9 = true;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10.0,top: 8.0),
                                      margin: EdgeInsets.only(top: 20.0,),
                                      height: 30.0,
                                      width: 80.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer == 3 ? Colors.amberAccent : Colors.grey.shade200,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Text("order out",style: TextStyle(
                                        color: selectedContainer == 3 ? Colors.white : Colors.grey,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'RenogareSoft',
                                        fontSize: 10,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30.0,),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 4;
                                        isorder1 = true;
                                        isorder2 = false;
                                        isorder3 = false;
                                        isorder4 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 4 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 4 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 4 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 4 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 5;
                                        isorder1 = false;
                                        isorder2 = true;
                                        isorder3 = false;
                                        isorder4 = false;
                                        isorder5 = false;
                                        isorder6 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 5 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 5 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 5 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 5 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 6;
                                        isorder1 = false;
                                        isorder2 = false;
                                        isorder3 = true;
                                        isorder4 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 6 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 6 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#3\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 6 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 6 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 7;
                                        isorder1 = false;
                                        isorder2 = false;
                                        isorder3 = false;
                                        isorder4 = true;
                                        isorder5 = false;
                                        isorder6 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 7 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 7 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#4\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 7 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 7 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 8;
                                        isorder1 = false;
                                        isorder2 = false;
                                        isorder3 = false;
                                        isorder4 = false;
                                        isorder5 = true;
                                        isorder6 = false;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 8 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 8 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#5\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 8 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 8 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        selectedContainer1 = 9;
                                        isorder1 = false;
                                        isorder2 = false;
                                        isorder3 = false;
                                        isorder4 = false;
                                        isorder5 = false;
                                        isorder6 = true;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 4.0,left: 20.0),
                                      height: 60.0,
                                      width: 260.0,
                                      decoration: BoxDecoration(
                                        color: selectedContainer1 == 9 ? Colors.amber.withOpacity(0.1) : Colors.white,
                                        border: Border.all(color: selectedContainer1 == 9 ? Colors.amber : Colors.grey),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(text: TextSpan(text: "Order#6\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                                              children: <TextSpan>[
                                                TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                                              ]
                                          ),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(right: 10.0),
                                                child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                                                    color: Colors.amber,
                                                    fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                                                    children: <TextSpan>[
                                                      TextSpan(text: "\202.00",style: TextStyle(
                                                          color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                                                    ]
                                                ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(right: 20.0),
                                                padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                                                height: 20.0,
                                                width: 20.0,
                                                decoration: BoxDecoration(
                                                  color: selectedContainer1 == 9 ? Colors.amber : Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                                child: Center(
                                                  child:Icon(Icons.chevron_right,
                                                    color:selectedContainer1 == 9 ? Colors.white : Colors.grey,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      if(isorder8)
                        Container(
                          margin: EdgeInsets.only(left: 30.0,top: 25.0),
                          height: 650.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),),
                      if(isorder9)
                        Container(
                          margin: EdgeInsets.only(left: 30.0,top: 25.0),
                          height: 650.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      SizedBox(width: 23.0,height: 30.0,),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 650.0,
                        width: 670.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child:Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 25.0,right: 500.0),
                                child: Text("Order Details",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'),)),
                            SizedBox(height: 20.0,),
                            if(isorder1)
                              Container(
                                height: 510.0,
                                width: 590.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: OrderDetails(),
                              ),
                            if(isorder2)
                              Container(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 310.0,
                                            width: 295.0,
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
                                            margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                  )
                              ),
                            if(isorder3)
                              Container(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 310.0,
                                            width: 295.0,
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
                                            margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                  )
                              ),
                            if(isorder4)
                              Container(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 310.0,
                                            width: 295.0,
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
                                            margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                  )
                              ),
                            if(isorder5)
                              Container(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 310.0,
                                            width: 295.0,
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
                                            margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                  )
                              ),
                            if(isorder6)
                              Container(
                                  padding: EdgeInsets.only(left: 30.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(child: Container(
                                            height: 310.0,
                                            width: 295.0,
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
                                            margin: EdgeInsets.only(left: 5.0,bottom: 10.0),
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
                                  )
                              ),
                            SizedBox(height: 20.0,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

        },
       );
    }
   }
