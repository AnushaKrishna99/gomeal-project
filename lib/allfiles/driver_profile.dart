import 'package:flutter/material.dart';
import 'package:gomeal/allfiles/container_part.dart';
import 'grid_view.dart';
import 'line_chart.dart';

class DriverProfile extends StatelessWidget {
  const DriverProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0, left: 30.0), // Adjust right margin
                  height: 600.0,
                  width: 450.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 30.0),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'RenogareSoft',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20.0, left: 30.0),
                            height: 90.0,
                            width: 90.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/driver.jpg",
                              fit: BoxFit.fill,
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0,left: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Jordan Nico",style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'RenogareSoft',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                        SizedBox(width: 150.0,),
                                        Icon(Icons.more_horiz_outlined,color: Colors.grey,),
                                      ],
                                    ),
                                Container(
                                  margin: EdgeInsets.only(right: 190.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 12,),
                                  SizedBox(width: 6.0,),
                                  Text("5.0 . 1K+Reviews",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                  ),
                                  ),
                                      ],
                                  ),
                                ),
                                SizedBox(height: 7.0,),
                                Container(
                                  margin: EdgeInsets.only(right: 230.0),
                                  child: Text("Join June 2020",style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8,
                                    fontFamily: 'Poppins',
                                  ),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  margin: EdgeInsets.only(right: 185.0),
                                  height: 30.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: TextButton(
                                    onPressed: (){
                                    },
                                    child: Text("Edit Profile",style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'RenogareSoft',
                                    ),),
                                  ),
                                )
                              ],
                            ),
                            ),
                                ],
                               ),
                      SizedBox(height: 20.0,),
                      MyGridView(),
                             ],
                            ),
                        ),
                        ],
                      ),
            SizedBox(width: 20.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ContainerPart(),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  padding: EdgeInsets.only(top: 10.0,left: 30.0),
                  height: 340.0,
                  width: 526.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: LineChart(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
