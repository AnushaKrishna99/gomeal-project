import 'package:flutter/material.dart';
class FirstBill extends StatefulWidget {
  const FirstBill({super.key});

  @override
  State<FirstBill> createState() => _FirstBillState();
}

class _FirstBillState extends State<FirstBill> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0,left: 20.0),
                      child: Text("Ongoing Order",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'RenogareSoft',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
    Container(
      margin: EdgeInsets.only(left: 20.0),
    child: RichText(text: TextSpan(text: "Order #1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w100,fontFamily: 'Poppins'),
    children: <TextSpan>[
    TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 10,fontFamily: 'Poppins'
    )),

    ],
            ),
            ),
            ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
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
                  margin: EdgeInsets.only(left: 10.0),
                  child: RichText(text: TextSpan(text: "Ruby Robin\n",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                    children: <TextSpan>[
                      TextSpan(text: "\User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),
                      ),
                    ],
                  ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Text("Delivery Address",style: TextStyle(color: Colors.grey,fontFamily: 'Roboto Slab',fontSize: 10),)),
            SizedBox(height: 4.0,),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 16.0,bottom: 2.0),
                    child: Icon(Icons.location_pin,color: Colors.amber,size: 16,)),
                Container(
                  margin: EdgeInsets.only(left: 0.0),
                  child: Text("Elim Street, 23",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'RenogareSoft',fontSize: 11),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child:  Text("Lorem ipsu, dolor sit amet,\nelit, sed do eiusmod tempor incididnut.",style: TextStyle(color: Colors.grey,fontSize: 10,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w300)
              ),
            ),
          ],
        ),
        SizedBox(width: 15.0,),
        VerticalDivider(
          indent: 70.0,
          endIndent: 20.0,
          color: Colors.grey,
          thickness: 1.0,
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 60.0,right: 80.0),
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
        SizedBox(width: 15.0,),
        VerticalDivider(
          indent: 70.0,
          endIndent: 20.0,
          color: Colors.grey,
          thickness: 1.0,
        ),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 60.0,left: 10.0),
                child: Text("Fast Food Resto",style: TextStyle(color: Colors.black,fontFamily: 'RenogareSoft',fontSize: 13),
                ),
            ),
            Row(
              children: [
                Container(
                    child: Icon(Icons.star,color: Colors.yellow,size: 12,)),
                SizedBox(width: 6.0,),
                Container(
                  margin: EdgeInsets.only(top: 1.0,right: 0.0),
                  child: Text("5.0 . 1K+Reviews",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                  ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 30.0),
              child: Text(
                  "Lorem ipsu, dolor sit amet,\nelit, sed do eiusmod tempor.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Roboto Slab',
                      fontWeight: FontWeight.w300)
              ),
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: Text("Delivery Time",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9,
                      fontFamily: 'RenogareSoft',
                      fontWeight: FontWeight.w300)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35),
                  child: Text("10 Min",style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Roboto Slab',
                      fontWeight: FontWeight.bold)),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: Text("Distance",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9,
                      fontFamily: 'RenogareSoft',
                      fontWeight: FontWeight.w300)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 55.0),
                  child: Text("2.5 km",style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Roboto Slab',
                      fontWeight: FontWeight.bold)),
                )
              ],
            )

          ],
        ),
        SizedBox(width: 15.0,),
        VerticalDivider(
          indent: 70.0,
          endIndent: 20.0,
          color: Colors.grey,
          thickness: 1.0,
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60.0,left: 30.0),
              child: Text("Payment Method",style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontFamily: 'RenogareSoft',
                  ),
            ),
            ),
            Container(
              margin: EdgeInsets.only(right: 40.0,top: 0.0),
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
              margin: EdgeInsets.only(top: 10.0,right: 40.0),
              child: Text("Total",style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: 'RenogareSoft',
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0,top: 0.0),
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
    );
  }
}
