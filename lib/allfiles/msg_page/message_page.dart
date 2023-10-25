import 'package:flutter/material.dart';

import '../search_page.dart';
import 'menu_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  String selectedItem = 'Recently' ;
  List  items = [
    'Recently',
    'Modern',
    'Old one'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          height: 800.0,
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
                          "Order History",
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
                        margin: EdgeInsets.only(left: 30.0,top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.dining_outlined, color: Colors.black),
                            SizedBox(width: 10.0,),
                            Icon(Icons.notifications_none, color: Colors.black),
                            SizedBox(width: 10.0,),
                            Icon(Icons.settings, color: Colors.black),],
                        ),
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
              SizedBox(height: 0.0,),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: SearchBars(hintText: 'Search here..', width: 450,height: 50,)),
                  Container(
                    height: 45.0,
                    width: 160.0,
                    margin: EdgeInsets.only(left: 350.0,top: 30.0),
                    padding: EdgeInsets.only(left: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
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
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
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
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 600.0,
                width: 990.0,
                color: Colors.white,
                child: MenuPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
