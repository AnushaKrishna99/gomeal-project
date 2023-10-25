import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        SizedBox(height: 20.0,),
        Container(
          margin: EdgeInsets.only(right: 120.0),
          child: Text("Your Balance",style: TextStyle(
              fontFamily: 'RenogareSoft',
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
          ),
          ),
        ),
        SizedBox(height: 20.0,),
        Stack(
          children: [
            Container(
              height: 120.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.only(top: 8.0,left: 6.0),
                margin: EdgeInsets.only(top: 30.0,left: 30.0),
                height: 60.0,
                width: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: RichText(
                  text: TextSpan(
                      text: " Balance\n",style: TextStyle(color: Colors.grey,fontSize: 12,fontFamily: 'Roboto Slab'),
                      children: <TextSpan>[
                        TextSpan(
                          text: "\$12.000",style: TextStyle(color: Colors.black,fontFamily:'Archivo Black',fontSize: 20,fontWeight: FontWeight.w500),
                        )
                      ]
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: 170.0,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 3.0),
                    margin: EdgeInsets.only(top: 0.0,left: 15.0),
                    height: 30.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.arrow_downward_rounded,color: Colors.black,size: 10,),
                        SizedBox(height: 1,),
                        Icon(Icons.camera_alt_outlined,color: Colors.black,size: 15,),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0,left: 18.0),
                      child: Text("top up",style: TextStyle(color: Colors.white,fontSize: 10),))
                ],
              ),
            ),

            Positioned(
              top: 30.0,
              left: 130.0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0.0,left: 10.0),
                    height: 30.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.arrow_upward_outlined,color: Colors.black,size: 10,),
                        SizedBox(height: 2,),
                        Icon(Icons.camera_alt_outlined,color: Colors.black,size: 15,),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.0,left: 18.0),
                      child: Text("transfer",style: TextStyle(color: Colors.white,fontSize: 10),))
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Container(
          margin: EdgeInsets.only(right: 160.0),
          child: Text("Your Address",style: TextStyle(color: Colors.grey,fontSize: 10,fontFamily: 'RenogareSoft',fontWeight: FontWeight.w700)
          ),
        ),
        SizedBox(height: 5.0,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 29.0,bottom: 2.0),
              child: Icon(Icons.location_pin,color: Colors.amber,size: 15.0,)),
            Text("Elom Street, 23",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Mitr',fontWeight: FontWeight.bold)
            ),
            Container(
              margin: EdgeInsets.only(left: 45.0),
              width: 70.0,
              height: 25.0,
              child: TextButton(
                onPressed: (){
                },
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.amber),
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),

                ),
                child: Text("change",style: TextStyle(color: Colors.amber,fontSize: 10,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
        Text("Lorem ipsu, dolor sit amet, consectetu adipiscing\nelit, sed do eiusmod tempor incididnut.",style: TextStyle(color: Colors.grey,fontSize: 10,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w300)),
         SizedBox(height: 20.0,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 25.0),
              width: 100.0,
              height: 25.0,
              child: TextButton(
                onPressed: (){
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.black),
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),

                ),
                child: Text("Add Details",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w300)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              width: 90.0,
              height: 25.0,
              child: TextButton(
                onPressed: (){
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  side: BorderSide(color: Colors.black),
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),

                ),
                child: Text("Add Note",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Roboto Slab',fontWeight: FontWeight.w300)),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Container(
            margin: EdgeInsets.only(right: 130.0),
            child: Text("Order Menu",style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'RenogareSoft',fontWeight: FontWeight.w700))),
        SizedBox(height: 10.0,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 30.0),
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
              margin: EdgeInsets.only(left: 50.0,top: 10.0),
              child: RichText(text: TextSpan(
                  text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 11),
                    ),
                    TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                  ]
              )),
            )
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 30.0),
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
              margin: EdgeInsets.only(left: 55.0,top: 10.0),
              child: RichText(text: TextSpan(
                  text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 11),
                    ),
                    TextSpan(text: "5.59",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                  ]
              )),
            )
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 30.0),
              height: 40.0,
              width: 50.0,
              color: Colors.white,
              child: Image.asset("assets/images/favchicken.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text("Chicken Nuggets",style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40.0,top: 10.0),
              child: RichText(text: TextSpan(
                  text: "+",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 11),
                    ),
                    TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                  ]
              )),
            )
          ],
        ),
        SizedBox(height: 40.0,),
        Divider(
          color: Colors.grey.shade200,
          thickness: 1.0,
          indent: 20.0,
          endIndent: 20.0,
        ),
        SizedBox(height: 10.0,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Container(
        margin: EdgeInsets.only(right: 50.0),
        child: Text("services",style: TextStyle(color: Colors.grey,fontFamily: 'Mitr',fontSize: 12,fontWeight: FontWeight.normal),
       ),
       ),
          Container(
            margin: EdgeInsets.only(left: 30.0,bottom: 1.0),
            child: RichText(text: TextSpan(
                text: "+",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 11),
                  ),
                  TextSpan(text: "1.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                ]
            )),
          )
        ],
       ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(right: 30.0),
              child: Text("Total",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0,bottom: 1.0),
              child: RichText(text: TextSpan(
                  text: "",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 11),
                    ),
                    TextSpan(text: "202.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                  ]
              )),
            )
          ],
        ),
        SizedBox(height: 20,),
        Container(
        child: GestureDetector(
          onTap: () {
          },
          child: Stack(
            children: [
              Container(
                height: 40.0,
                width: 250.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber),
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 190.0,
                child: Container(
                  height: 20.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Icon(
                    Icons.dining,
                    color: Colors.white,
                    size: 17.0,
                  ),
                ),
              ),
              Positioned(
                top: 12.0,
                left: 80.0,
                child: Text(
                  "Have A coupon code?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                  ),
                ),
              ),
              Positioned(
                top: 6.0,
                left: 190.0,
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        ),
           Column(
              children: [
             SizedBox(height: 20.0),
                 TextButton(
                  onPressed: () {

                        },
                         child: Container(
                          padding: EdgeInsets.only(top: 0.0, right: 10.0),
                           height: 40.0,
                           width: 250.0,
                           decoration: BoxDecoration(
                           color: Colors.amber,
                             borderRadius: BorderRadius.circular(10.0),
          ),
                           child: Center(
                            child: Text(
                             "Checkout",
                             style: TextStyle(
                             color: Colors.white,
                              fontSize: 15,
                             fontWeight: FontWeight.w800,
    ),
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
