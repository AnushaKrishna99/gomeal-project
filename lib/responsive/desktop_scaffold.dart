import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constant_page.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}
class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Material(
            child: Container(
              color: Colors.white,
              height: 1200.0,
              child: Obx(() => ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      child: ListTile(
                        title: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "SLYS",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'RenogareSoft',
                                ),
                              ),
                              TextSpan(
                                text: ".",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(15) ,
                              boxShadow: [
                                BoxShadow(
                                  color: sideBarController.index.value ==0 ? Colors.amber : Colors.white,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: ListTile(
                              leading: Icon(Icons.dashboard_customize,
                                color: sideBarController.index.value == 0 ? Colors.white : Colors.grey[500],
                              ),
                              title: Text(
                                "Dashboard",
                                style: TextStyle(
                                    color: sideBarController.index.value == 0 ? Colors.white : Colors.grey[500],
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () => sideBarController.index.value = 0,
                              selected: sideBarController.index.value == 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 1 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.motorcycle,
                              color: sideBarController.index.value == 1 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Food Order",
                              style: TextStyle(
                                  color: sideBarController.index.value == 1 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 1,
                            selected: sideBarController.index.value == 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 2 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.favorite,
                              color: sideBarController.index.value == 2 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Favorite",
                              style: TextStyle(
                                  color: sideBarController.index.value == 2 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 2,
                            selected: sideBarController.index.value == 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value ==3 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.punch_clock_sharp,
                              color: sideBarController.index.value == 3 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Order History",
                              style: TextStyle(
                                  color: sideBarController.index.value == 3 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 3,
                            selected: sideBarController.index.value == 3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 10 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.food_bank_outlined,
                              color: sideBarController.index.value == 10 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Prepare to Eat",
                              style: TextStyle(
                                  color: sideBarController.index.value == 10 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 10,
                            selected: sideBarController.index.value == 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 4 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.settings,
                              color: sideBarController.index.value == 4 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Settings",
                              style: TextStyle(
                                  color: sideBarController.index.value == 4 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 4,
                            selected: sideBarController.index.value == 4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 5 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.bookmarks_sharp,
                              color: sideBarController.index.value == 5 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Bills",
                              style: TextStyle(
                                  color: sideBarController.index.value == 5 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 5,
                            selected: sideBarController.index.value == 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 6 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.message,
                              color: sideBarController.index.value == 6 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Messages",
                              style: TextStyle(
                                  color: sideBarController.index.value == 6 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 6,
                            selected: sideBarController.index.value == 6,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 7 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.message,
                              color: sideBarController.index.value == 7 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Messages",
                              style: TextStyle(
                                  color: sideBarController.index.value == 7 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 7,
                            selected: sideBarController.index.value == 7,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 8 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.restaurant_menu,
                              color: sideBarController.index.value == 8 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Menu",
                              style: TextStyle(
                                  color: sideBarController.index.value == 8 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 8,
                            selected: sideBarController.index.value == 8,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15) ,
                            boxShadow: [
                              BoxShadow(
                                color: sideBarController.index.value == 9 ? Colors.amber : Colors.white,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),

                          child: ListTile(
                            leading: Icon(Icons.restaurant_menu,
                              color: sideBarController.index.value == 9 ? Colors.white : Colors.grey[500],
                            ),
                            title: Text(
                              "Menu",
                              style: TextStyle(
                                  color: sideBarController.index.value == 9 ? Colors.white : Colors.grey[500],
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 9,
                            selected: sideBarController.index.value == 9,
                          ),
                        ),
                      ],
                    ),
                  ],
              ),
              ),
            ),
          ),
            ),
        Expanded(
          flex: 9,
            child: Obx(() => sideBarController.pages[sideBarController.index.value])
        ),
      ],
    );
  }
}
