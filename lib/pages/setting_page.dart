import 'package:flutter/material.dart';
import '../allfiles/driver_profile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30.0,left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello, Driver",
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
            DriverProfile(),
          ],
        ),

      ),
    );
  }
}
