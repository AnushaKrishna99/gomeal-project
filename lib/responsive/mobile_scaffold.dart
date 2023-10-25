import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constant_page.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    SideBarController sideBarController = Get.put(SideBarController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child: Obx(() => ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: ListTile(
                        title: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "SLYS",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
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
                    SizedBox(height: 30,),
                    Column(
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
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 0,
                            selected: sideBarController.index.value == 0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
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
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 1,
                            selected: sideBarController.index.value == 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
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
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 2,
                            selected: sideBarController.index.value == 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
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
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () => sideBarController.index.value = 3,
                            selected: sideBarController.index.value == 3,
                          ),
                        ),
                      ],
                    ),

                       SizedBox(height: 30,),
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
                               fontSize: 15,
                               fontWeight: FontWeight.bold),
                             ),
                               onTap: () => sideBarController.index.value = 4,
                               selected: sideBarController.index.value == 4,
                      ),
                           ),
                         ],
                       ),
                  ]
                ),),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => sideBarController.pages[sideBarController.index.value]
      ),

    );
  }
}
