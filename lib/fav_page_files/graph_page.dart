import 'package:flutter/material.dart';
import 'package:gomeal/fav_page_files/graph_Pages.dart';
import 'package:gomeal/fav_page_files/second_bar.dart';

import '../allfiles/search_page.dart';
import 'bar_page.dart';
class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {

  List<bool> isStarFilled1 = [false,false,false,false,false];
  List<bool> isStarFilled2 = [false,false,false,false,false];
  List<bool> isStarFilled3 = [false,false,false,false,false];
  List<bool> isStarFilled4 = [false,false,false,false,false];
  void toggleStar(List<bool> starList, int index) {
    setState(() {
      for (int i = 0; i < starList.length; i++) {
        starList[i] = i <= index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0,top: 20.0),
                  height: 200.0,
                  width: 470.0,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BarPage(),
                ),
              ],
            ),
            SizedBox(width: 20.0,),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0,top: 20.0),
                  height: 200.0,
                  width: 470.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SecondBar(),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30.0,),
        Column(
          children: [
            Container(
                margin: EdgeInsets.only(right: 830.0,top: 10.0),
                child: Text(
                  "Recent Reviews",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Archivo Black',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),)
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 410.0,top: 0.0),
                    child:
                SearchBars(hintText: 'Search here..', width: 550,height: 50,)),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.0,),
        Row(
          children: [
            Container(
            margin: EdgeInsets.only(left: 20.0),
            height: 230.0,
            width: 230.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, left: 30.0),
                            height: 35.0,
                            width: 35.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/girl1.jpeg",
                                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                              ),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                         Container(
                           margin: EdgeInsets.only(top: 20.0,left: 10.0),
                           child: Text("Roby Rubin",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                           ),
                         ),
                          SizedBox(height: 3.0,),
                          Container(
                            margin: EdgeInsets.only(left: 12.0),
                              child: Text("User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1.0,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          "assets/images/burger2.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 3.0,bottom: 5.0),
                              child: Text("Fish Burger", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'))),
                          Container(
                            margin: EdgeInsets.only(left: 2.0),
                            child: Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  GestureDetector(
                                    onTap: (){
                                      toggleStar(isStarFilled1,i);
                                    },
                                    child: Icon(
                                      isStarFilled1[i] ? Icons.star : Icons.star_border,
                                      color: isStarFilled1[i] ? Colors.amberAccent : Colors.black,
                                      size: 16,
                                    ),
                                  ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                 SizedBox(height: 18.0,),
                 RichText(text: TextSpan(text: "Lorem ipsum dolor sit amet,consectur\n"
                     "adiplscing elit,sed do eiusmod tempor",
                   style: TextStyle(
                       color: Colors.grey,
                       fontSize:10 ),
                 children: <TextSpan>[
                   TextSpan(text: "\n \nOrdered june 21,2020",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Roboto Slab'),),
                 ]
                 ),),
                ],
              ),
              ),
            SizedBox(width: 5.0,height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 230.0,
              width: 230.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, left: 20.0),
                            height: 35.0,
                            width: 35.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/girl2.jpeg",
                                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                              ),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0,left: 10.0),
                            child: Text("Rocky jack",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Container(
                              margin: EdgeInsets.only(left: 12.0),
                              child: Text("User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1.0,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          "assets/images/burger3.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 3.0,bottom: 5.0),
                              child: Text("Cheese Burger", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'))),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                GestureDetector(
                                  onTap: (){
                                    toggleStar(isStarFilled2,i);
                                  },
                                  child: Icon(
                                    isStarFilled2[i] ? Icons.star : Icons.star_border,
                                    color: isStarFilled2[i] ? Colors.amberAccent : Colors.black,
                                    size: 16,
                                  ),
                                ),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0,),
                  RichText(text: TextSpan(text: "Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:10 ),
                      children: <TextSpan>[
                        TextSpan(text: "\n \nOrdered june 21,2020",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600,fontFamily: 'Roboto Slab'),),
                      ]
                  ),),
                ],
              ),
            ),
            SizedBox(width: 5.0,height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 230.0,
              width: 230.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, left: 20.0),
                            height: 35.0,
                            width: 35.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/girl3.jpeg",
                                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                              ),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0,left: 10.0),
                            child: Text("Rose Bubbly",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Container(
                              margin: EdgeInsets.only(left: 12.0),
                              child: Text("User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1.0,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          "assets/images/burger1.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 3.0,bottom: 5.0),
                              child: Text("double Burger", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'))),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                GestureDetector(
                                  onTap: (){
                                    toggleStar(isStarFilled3,i);
                                  },
                                  child: Icon(
                                    isStarFilled3[i] ? Icons.star : Icons.star_border,
                                    color: isStarFilled3[i] ? Colors.amberAccent : Colors.black,
                                    size: 16,
                                  ),
                                ),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0,),
                  RichText(text: TextSpan(text: "Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:10 ),
                      children: <TextSpan>[
                        TextSpan(text: "\n \nOrdered june 21,2020",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Roboto Slab'),),
                      ]
                  ),),
                ],
              ),
            ),
            SizedBox(width: 5.0,height: 10.0,),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 230.0,
              width: 230.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, left: 20.0),
                            height: 35.0,
                            width: 35.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "assets/images/gilr4.jpg",
                                fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                              ),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0,left: 10.0),
                            child: Text("Samantha M",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                            ),
                          ),
                          SizedBox(height: 3.0,),
                          Container(
                              margin: EdgeInsets.only(left: 12.0),
                              child: Text("User from 2020",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                    thickness: 1.0,
                    color: Colors.grey.shade200,
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Image.asset(
                          "assets/images/burger2.png.crdownload.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 3.0,bottom: 5.0),
                              child: Text("Big Burger", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'))),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                GestureDetector(
                                  onTap: (){
                                    toggleStar(isStarFilled4,i);
                                  },
                                  child: Icon(
                                    isStarFilled4[i] ? Icons.star : Icons.star_border,
                                    color: isStarFilled4[i] ? Colors.amberAccent : Colors.black,
                                    size: 16,
                                  ),
                                ),

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.0,),
                  RichText(text: TextSpan(text: "Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize:10 ),
                      children: <TextSpan>[
                        TextSpan(text: "\n \nOrdered june 21,2020",style: TextStyle(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w700,fontFamily: 'Roboto Slab'),),
                      ]
                  ),),
                ],
              ),
            ),
            SizedBox(width: 5.0,height: 10.0,),
          ],
        ),
        GraphPages(),
      ],
      ),
    );
  }
}
