import 'package:flutter/material.dart';
import 'package:gomeal/bill_pages_all/first_page.dart';

import '../bill_pages_all/user_page.dart';

class BillPage extends StatefulWidget {
  const BillPage({super.key});

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Container(
          height: 900.0,
          child: SingleChildScrollView(
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
                            "Orders",
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
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 200.0,
                  width: 990.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: FirstBill(),
                ),
                Container(
                  child: UserPage(),
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
