import 'package:flutter/material.dart';
class FavGraphWidget extends StatefulWidget {
  const FavGraphWidget({super.key});

  @override
  State<FavGraphWidget> createState() => _FavGraphWidgetState();
}

class _FavGraphWidgetState extends State<FavGraphWidget> {
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
      child:Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5.0),
            height: 200.0,
            width: 240.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 10.0),
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
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0,top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(right: 52.0),
                  child: Text("Lorem ipsum dolor sit amet,consectur\n"
                    "adiplscing elit,sed do eiusmod tempor",style: TextStyle(color: Colors.grey,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Roboto Slab'),),
                ),
                SizedBox(height: 10.0,),
                Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.0,
                  color: Colors.grey.shade200,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0, left: 20.0),
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
                          margin: EdgeInsets.only(top: 0.0,right: 16.0),
                          child: Text("Rocky jack",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                          ),
                        ),
                        SizedBox(height: 3.0,),
                        Container(
                            margin: EdgeInsets.only(left: 13.0),
                            child: Text("Ordered june 21, 2020",style: TextStyle(color: Colors.grey,fontSize: 9,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 200.0,
            width: 240.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Row(
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
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0,top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(right: 52.0),
                  child: Text("Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",style: TextStyle(color: Colors.grey,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Roboto Slab'),),
                ),
                SizedBox(height: 10.0,),
                Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.0,
                  color: Colors.grey.shade200,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0, left: 20.0),
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
                          margin: EdgeInsets.only(top: 0.0,right: 16.0),
                          child: Text("Samantha N",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                          ),
                        ),
                        SizedBox(height: 3.0,),
                        Container(
                            margin: EdgeInsets.only(left: 13.0),
                            child: Text("Ordered june 21, 2020",style: TextStyle(color: Colors.grey,fontSize: 9,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 200.0,
            width: 240.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Row(
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
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0,top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(right: 52.0),
                  child: Text("Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",style: TextStyle(color: Colors.grey,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Roboto Slab'),),
                ),
                SizedBox(height: 10.0,),
                Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.0,
                  color: Colors.grey.shade200,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0, left: 20.0),
                          height: 35.0,
                          width: 35.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/boy2.jpeg",
                              fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            ),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0,right: 16.0),
                          child: Text("Jack N Jon",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                          ),
                        ),
                        SizedBox(height: 3.0,),
                        Container(
                            margin: EdgeInsets.only(left: 13.0),
                            child: Text("Ordered june 21, 2020",style: TextStyle(color: Colors.grey,fontSize: 9,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 10.0),
            height: 200.0,
            width: 240.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20.0,top: 10.0),
                      child: Row(
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
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20.0,top: 10.0),
                          child: Text("Lorem ipsum dolor sit amet",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  margin: EdgeInsets.only(right: 52.0),
                  child: Text("Lorem ipsum dolor sit amet,consectur\n"
                      "adiplscing elit,sed do eiusmod tempor",style: TextStyle(color: Colors.grey,
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Roboto Slab'),),
                ),
                SizedBox(height: 10.0,),
                Divider(
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.0,
                  color: Colors.grey.shade200,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0, left: 20.0),
                          height: 35.0,
                          width: 35.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/boy1.jpeg",
                              fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            ),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 0.0,right: 16.0),
                          child: Text("Robert jack",style: TextStyle(color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold,fontFamily: 'Roboto Slab'),
                          ),
                        ),
                        SizedBox(height: 3.0,),
                        Container(
                            margin: EdgeInsets.only(left: 13.0),
                            child: Text("Ordered june 21, 2020",style: TextStyle(color: Colors.grey,fontSize: 9,fontWeight: FontWeight.w200,fontFamily: 'Roboto Slab'),))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
