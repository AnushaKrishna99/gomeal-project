import 'package:flutter/material.dart';
import 'package:gomeal/allfiles/profile_page.dart';
import 'package:gomeal/headings/heading_dashboard.dart';
import 'package:gomeal/responsive/responsive_builder.dart';
import '../allfiles/popular_dishes.dart';
import '../allfiles/second_header.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 1150,
                        color: Colors.grey.shade100,
                        child: Column(
                          children: [
                            Container(
                              child: HeadDashboard(),
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              children: [
                                Container(child:
                                HeadingPage()),
                                SizedBox(height: 0.0,),
                                Container(
                                  padding: EdgeInsets.only(top: 40.0),
                                  margin: EdgeInsets.only(right: 570.0),
                                  child: Text("Category",style: TextStyle(fontFamily: 'RenogareSoft',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 40.0),
                                      height:  100.0,
                                      width: 100.0,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/cupc.jpeg",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(top: 14.0),
                                            child: Text("Bakery",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: 100.0,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/shawarmaicon.png",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text("Shawarma",
                                              style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),                    ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 12.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: 100.0,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/legicon.png",
                                            height: 35.0,
                                            width: 35.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(18.0),
                                            child: Text("Chicken",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 10.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: 100.0,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/fishicon.png",
                                            height: 45.0,
                                            width: 45.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Text("Seafood",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: 100.0,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/pizzaicon.jpg",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Text("Pizza",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 8.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height: 100.0,
                                      width: 100.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 55, // Set the height of the image
                                            width: 55,  // Set the width of the image
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("Burger",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                                PopularDishes(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Container(
                          height: 1150,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ProfilePage(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      tabletBuilder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        height: 1150,
                        color: Colors.grey.shade100,
                        child: Column(
                          children: [
                            Container(
                              child: HeadDashboard(),
                            ),
                            SizedBox(height: 20.0,),
                            Column(
                              children: [
                                Container(child:
                                HeadingPage()),
                                SizedBox(height: 0.0,),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width/8,
                                      padding: EdgeInsets.only(top: 40.0),
                                      margin: EdgeInsets.only(left: 40.0),
                                      child: Text("Category",style: TextStyle(fontFamily: 'RenogareSoft',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 40.0),
                                      height:  100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/cupc.jpeg",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(top: 14.0),
                                            child: Text("Bakery",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/shawarmaicon.png",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Text("Shawarma",
                                              style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),                    ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 12.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/legicon.png",
                                            height: 35.0,
                                            width: 35.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(18.0),
                                            child: Text("Chicken",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 10.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/fishicon.png",
                                            height: 45.0,
                                            width: 45.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Text("Seafood",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 13.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height:  100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      child: Column(
                                        children: [
                                          Image.asset("assets/images/pizzaicon.jpg",
                                            height: 40.0,
                                            width: 40.0,
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.all(12.0),
                                            child: Text("Pizza",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),

                                    ),
                                    SizedBox(width: 10,),
                                    Container(
                                      padding: EdgeInsets.only(top: 8.0),
                                      margin: EdgeInsets.only(left: 5.0),
                                      height: 100.0,
                                      width: MediaQuery.of(context).size.width/12,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/images/burger.jpeg",
                                            height: 55, // Set the height of the image
                                            width: 55,  // Set the width of the image
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Text("Burger",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                            ),
                                          )
                                        ],
                                      ),
                                    )

                                  ],
                                ),
                                PopularDishes(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 2,),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Container(
                          height: 1150,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ProfilePage(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      desktopBuilder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: Container(
           color: Colors.grey.shade200,
           child: SingleChildScrollView(
            child: Row(
          children: [
            Expanded(
              flex: 5,
                child: Container(
                  height: 1150,
                  color: Colors.grey.shade100,
                  child: Column(
                    children: [
                      Container(
                        child: HeadDashboard(),
                      ),
                      SizedBox(height: 20.0,),
                      Column(
                        children: [
                          Container(child:
                          HeadingPage()),
                          SizedBox(height: 0.0,),
                          Container(
                            padding: EdgeInsets.only(top: 40.0),
                            margin: EdgeInsets.only(right: 570.0),
                            child: Text("Category",style: TextStyle(fontFamily: 'RenogareSoft',color: Colors.black,fontSize: 15,fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 13.0),
                                margin: EdgeInsets.only(left: 40.0),
                                height:  100.0,
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/cupc.jpeg",
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: 14.0),
                                      child: Text("Bakery",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 13.0),
                                margin: EdgeInsets.only(left: 5.0),
                                height:  100.0,
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/shawarmaicon.png",
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text("Shawarma",
                                        style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),                    ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 12.0),
                                margin: EdgeInsets.only(left: 5.0),
                                height:  100.0,
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/legicon.png",
                                      height: 35.0,
                                      width: 35.0,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.all(18.0),
                                      child: Text("Chicken",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 10.0),
                                margin: EdgeInsets.only(left: 5.0),
                                height:  100.0,
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/fishicon.png",
                                      height: 45.0,
                                      width: 45.0,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.all(12.0),
                                      child: Text("Seafood",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 13.0),
                                margin: EdgeInsets.only(left: 5.0),
                                height:  100.0,
                                width: 100.0,
                                child: Column(
                                  children: [
                                    Image.asset("assets/images/pizzaicon.jpg",
                                      height: 40.0,
                                      width: 40.0,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.all(12.0),
                                      child: Text("Pizza",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.only(top: 8.0),
                                margin: EdgeInsets.only(left: 5.0),
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/burger.jpeg",
                                      height: 55, // Set the height of the image
                                      width: 55,  // Set the width of the image
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text("Burger",style: TextStyle(fontFamily: 'Roboto Slab',color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                          PopularDishes(),
                        ],
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(width: 2,),
            Expanded(
              flex: 2,
                child: SingleChildScrollView(
                  child: Container(
                    height: 1150,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ProfilePage(),
                      ],
                    ),
                  ),
                ),
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
