import 'package:flutter/material.dart';
import 'package:gomeal/responsive/responsive_builder.dart';
import '../allfiles/search_page.dart';
import '../constants/table_page.dart';



class PrepareToEat extends StatefulWidget {
  @override
  State<PrepareToEat> createState() => _PrepareToEatState();
}

class _PrepareToEatState extends State<PrepareToEat> {
  final ValueNotifier<int> selectedButtonIndex = ValueNotifier<int>(0);

  Widget buildToggleButton(int currentIndex, int buttonIndex, String buttonText) {
    final isSelected = currentIndex == buttonIndex;
    return InkWell(
      onTap: () {
        selectedButtonIndex.value = buttonIndex;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              buttonText, style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'Poppins',
            ),
            ),
            SizedBox(height: 2),
            Container(
              height: 3,
              width: isSelected ? 70 : 0,
              color: isSelected ? Color(0xfffbb830) : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileBuilder: (BuildContext context, BoxConstraints constraints){
      return SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                height: 900.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: SearchBars(hintText: 'Search here..', width: 200,height: 50,)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 50.0,top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // Handle the click event for the second icon here
                                    },
                                    child: Icon(Icons.notifications_none, color: Colors.black,size: 20,),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 55.0),
                                    child: InkWell(
                                      onTap: () {
                                        // Handle the click event for the third icon here
                                      },
                                      child: Icon(Icons.settings, color: Colors.black,size: 20,),
                                    ),
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
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Column(
                            children: [
                              ValueListenableBuilder<int>(
                                valueListenable: selectedButtonIndex,
                                builder: (context, index, _) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                buildToggleButton(index, 0, "Basic"),
                                                SizedBox(width: 0,),
                                                buildToggleButton(index, 1, "Advanced"),
                                              ],
                                            ),

                                          ],
                                        ),

                                      ],
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0.0),
                          padding: EdgeInsets.only(left: 0.0),
                          height: 18.0,
                          width:  MediaQuery.of(context).size.width/6,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Row(
                              children: [
                                Text("+ ",style: TextStyle(color: Colors.amber,fontSize: 12),),
                                Text("Add Food",style: TextStyle(
                                  fontSize: 8.0,
                                  fontFamily: 'Poppins',
                                ),),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0),
                          padding: EdgeInsets.only(left: 6.0,top: 2.0),
                          height: 18.0,
                          width:  MediaQuery.of(context).size.width/10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Text("Delete All",style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                              fontFamily: 'Poppins',
                            ),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0.0,top: 0.0),
                          height: 15.0,
                          width:  MediaQuery.of(context).size.width/24,
                          child: Image.asset("assets/images/excel-removebg-preview.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0.0,top: 0.0),
                          height: 25.0,
                          width:  MediaQuery.of(context).size.width/24,
                          child: Image.asset("assets/images/csv-removebg-preview.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3.0,top: 0.0),
                          height: 15.0,
                          width:  MediaQuery.of(context).size.width/26,
                          child: Image.asset("assets/images/fun-removebg-preview.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    TablePages()
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },

      tabletBuilder: (BuildContext context, BoxConstraints constraints){
        return SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Container(
                  height: 900.0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 30.0),
                              child: SearchBars(hintText: 'Search here..', width: 500,height: 50,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 30.0,top: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
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
                                    width: MediaQuery.of(context).size.width/18,
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
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                ValueListenableBuilder<int>(
                                  valueListenable: selectedButtonIndex,
                                  builder: (context, index, _) {
                                    return Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  buildToggleButton(index, 0, "Basic"),
                                                  SizedBox(width: 20,),
                                                  buildToggleButton(index, 1, "Advanced"),
                                                ],
                                              ),

                                            ],
                                          ),

                                        ],
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 50.0),
                            padding: EdgeInsets.only(left: 10.0),
                            height: 30.0,
                            width:  MediaQuery.of(context).size.width/8,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: InkWell(
                              onTap: (){

                              },
                              child: Row(
                                children: [
                                  Text("+ ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                                  Text("Add Food",style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Poppins',
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.0),
                            padding: EdgeInsets.only(left: 17.0,top: 5.0),
                            height: 30.0,
                            width:  MediaQuery.of(context).size.width/8,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: InkWell(
                              onTap: (){

                              },
                              child: Text("Delete All",style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontFamily: 'Poppins',
                              ),),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0,top: 0.0),
                            height: 15.0,
                            width:  MediaQuery.of(context).size.width/14,

                            child: Image.asset("assets/images/excel-removebg-preview.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0,top: 0.0),
                            height: 25.0,
                            width:  MediaQuery.of(context).size.width/14,
                            child: Image.asset("assets/images/csv-removebg-preview.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0,top: 0.0),
                            height: 15.0,
                            width:  MediaQuery.of(context).size.width/16,
                            child: Image.asset("assets/images/fun-removebg-preview.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0,),
                      TablePages()
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

      },

    desktopBuilder: (BuildContext context, BoxConstraints constraints){
      return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          height: 900.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: SearchBars(hintText: 'Search here..', width: 500, height: 50),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0, top: 20.0),
                    child: Row(
                      children: [
                        SizedBox(width: 10.0),
                        Container(
                          margin: EdgeInsets.only(left: 180.0),
                          child: InkWell(
                            onTap: () {
                              // Handle the click event for the second icon here
                            },
                            child: Icon(Icons.notifications_none, color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        InkWell(
                          onTap: () {
                            // Handle the click event for the third icon here
                          },
                          child: Icon(Icons.settings, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30.0, top: 20.0),
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Image.asset(
                      "assets/images/driver.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        ValueListenableBuilder<int>(
                          valueListenable: selectedButtonIndex,
                          builder: (context, index, _) {
                            return Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          buildToggleButton(index, 0, "Basic"),
                                          SizedBox(width: 20,),
                                          buildToggleButton(index, 1, "Advanced"),
                                        ],
                                      ),

                                    ],
                                  ),

                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 390.0),
                    padding: EdgeInsets.only(left: 10.0),
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          Text("+ ",style: TextStyle(color: Colors.amber,fontSize: 16),),
                          Text("Add Food",style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: 'Poppins',
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    padding: EdgeInsets.only(left: 7.0,top: 5.0),
                    height: 30.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Text("Delete All",style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontFamily: 'Poppins',
                      ),),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.0,top: 0.0),
                    height: 30.0,
                    width: 30.0,

                    child: Image.asset("assets/images/excel-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25.0,top: 0.0),
                    height: 35.0,
                    width: 35.0,
                    child: Image.asset("assets/images/csv-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0,top: 0.0),
                    height: 30.0,
                    width: 30.0,
                    child: Image.asset("assets/images/fun-removebg-preview.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0,),
              TablePages()
                ],
              ),
          ),
        ),
    );
      },
    );
  }
}
