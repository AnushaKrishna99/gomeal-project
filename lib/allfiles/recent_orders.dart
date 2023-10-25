import 'package:flutter/material.dart';
import 'package:gomeal/allfiles/recent_orders.dart';

class RecentOrder extends StatefulWidget {
  const RecentOrder({super.key});

  @override
  State<RecentOrder> createState() => _RecentOrderState();
}

class _RecentOrderState extends State<RecentOrder> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;

  List<bool> isStarFilled1 = [false,false,false,false,false];
  List<bool> isStarFilled2 = [false,false,false,false,false];
  List<bool> isStarFilled3 = [false,false,false,false,false];
  void toggleStar(List<bool> starList, int index) {
    setState(() {
      for (int i = 0; i < starList.length; i++) {
        starList[i] = i <= index;
      }
    });
  }

  void toggleFavorite(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        isFavorite1 = !isFavorite1;
      } else if (containerNumber == 2) {
        isFavorite2 = !isFavorite2;
      } else if (containerNumber == 3) {
        isFavorite3 = !isFavorite3;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0,left: 30.0),
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Recent Orders",
                    style: TextStyle(
                        fontFamily: 'RenogareSoft',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
              TextButton(onPressed: (){},
                child: Row(
                  children: [
                    Text("View more",
                      style: TextStyle(
                          fontFamily: 'Mitr',
                          color: Colors.amber,
                          fontSize: 14,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    Icon(Icons.chevron_right,
                      color: Colors.amber,size: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      height: 220.0,
                      width: 210.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset("assets/images/noodles.png",
                                height: 150.0,
                                width: 150.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 0.0,top: 2.0),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Veg Noodles \n',
                                  style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.bold),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(text: ' \$ ',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 8.0,),
                            Text(" 4.79 km . 21 min",style: TextStyle(color: Colors.grey,fontSize: 12 ),)

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.0,
                      left: 20.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 180.0),
                            child: GestureDetector(
                              onTap: () {
                                toggleFavorite(1);
                              },
                              child: Icon(
                                isFavorite1 ? Icons.favorite : Icons.favorite,
                                color: isFavorite1 ? Colors.red : Colors.grey.shade300,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 0.0),
                child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 220.0,
                        width: 210.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Column(
                              children: [
                                Container(
                                  child: Image.asset("assets/images/soup.png",
                                    height: 150.0,
                                    width: 150.0,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(right: 10.0,top: 2.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Beef Burger \n',
                                      style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(text: '  \$ ',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Text(" 4.79 km . 21 min",style: TextStyle(color: Colors.grey,fontSize: 12 ),)

                              ],



                          ),),
                      ),
                      Positioned(
                        top: 20.0,
                        left: 20.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 180.0),
                              child: GestureDetector(
                                onTap: () {
                                  toggleFavorite(2);
                                },
                                child: Icon(
                                  isFavorite2 ? Icons.favorite : Icons.favorite,
                                  color: isFavorite2 ? Colors.red : Colors.grey.shade300,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30.0),
                child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 220.0,
                        width: 210.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 30.0),
                                  child: Image.asset("assets/images/pizza1.png",
                                    height: 120.0,
                                    width: 120.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.0,top: 0.0),
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Cheese Pizza \n',
                                      style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.bold),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        TextSpan(text: '   \$ ',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Text("  4.79 km . 21 min",style: TextStyle(color: Colors.grey,fontSize: 12 ),)
                              ],
                          ),),
                      ),
                      Positioned(
                        top: 20.0,
                        left: 20.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 180.0),
                              child: GestureDetector(
                                onTap: () {
                                  toggleFavorite(3);
                                },
                                child: Icon(
                                  isFavorite3 ? Icons.favorite : Icons.favorite,
                                  color: isFavorite3 ? Colors.red : Colors.grey.shade300,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),),
                    ]
                ),
              ),
            ]
        ),

      ],
    );
  }
}
