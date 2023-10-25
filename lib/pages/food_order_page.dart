import 'package:flutter/material.dart';
import 'package:gomeal/fav_page_files/fav_page_container.dart';
import 'package:gomeal/fav_page_files/home_page.dart';

class FoodOrderPage extends StatefulWidget {
  const FoodOrderPage({super.key});

  @override
  State<FoodOrderPage> createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
   String selectedItem = 'Latest' ;
  List  items = [
    'Latest',
    'Modern',
    'Old one'
  ];
  String selectedRatings = 'All Ratings' ;
  List ratings = [
    'All Ratings',
    'two',
    'three'
  ];
   String selectedmonths = 'This Month' ;
   List rating = [
     'This Month',
     'two',
     'two',
     'three'
   ];
   @override
  Widget build(BuildContext context) {
    List<double> weeklySummary = [
      40.40,
      102.50,
      54.42,
      100.50,
      50.0,
      110.80,
      90.10,
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Container(
          height: 700.00,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top: 40.0,left: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Feedback",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
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
                        margin: EdgeInsets.only(left: 20.0,top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.dining_outlined, color: Colors.black),
                            SizedBox(width: 10.0,),
                            Icon(Icons.notifications_none, color: Colors.black),
                            SizedBox(width: 20.0,),
                            Icon(Icons.settings, color: Colors.black),],
                        ),
                      ),

                      Row(
                        children: [
                          SizedBox(width: 40.0,),
                          Container(
                            margin: EdgeInsets.only(right: 40.0,top: 20.0),
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
              SizedBox(height: 10.0,),
              Container(
                height: 300.0,
                width: 990.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: HomePage(),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 43.0,top: 12.0),
                    child: Row(
                      children: [
                        Text("Recent Feedback",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'RenogareSoft',
                        ),
                        ),
                        ],),
                  ),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 30.0,
                        width: 110.0,
                        margin: EdgeInsets.only(left: 570.0),
                        padding: EdgeInsets.only(left: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                           DropdownButton<String>(
                             underline: SizedBox(),
                               value: selectedItem,
                             onChanged: (newValue){
                                 setState(() {
                                   selectedItem = newValue!;
                                 });
                             },

                             items: items.map((item){
                               return DropdownMenuItem<String>(
                                 value: item,
                                 child: Row(
                                   children: [
                                     Text(item,
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontFamily: 'RenogareSoft',
                                         fontSize: 10
                                       ),
                                     ),
                                   ],
                                 ),
                               );
                             }).toList(),
                           ),
                          ],
                        ),
                      ),
                  SizedBox(width: 10.0,),
                  Container(
                    height: 30.0,
                    width: 110.0,
                    margin: EdgeInsets.only(right: 40.0),
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          underline: SizedBox(),
                          value: selectedRatings,
                          onChanged: (newValue){
                            setState(() {
                              selectedRatings = newValue!;
                            });
                          },

                          items: ratings.map((item){
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Row(
                                children: [
                                  Text(item,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'RenogareSoft',
                                        fontSize: 10
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(width: 4.0,),

                      ],
                    ),
                  ),
                    ],
                  ),
              SizedBox(height: 20.0,),
               FavGraphWidget(),
                ],
              ),
        ),
      ),
    );
  }
}
