import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10.0,left: 5.0),
              margin: EdgeInsets.only(left: 27.0),
              height: 110.0,
              width: 120.0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10.0)
              ),
              
              child:Column(
                children: [
                  Icon(Icons.done_all,color: Colors.green,),
                  SizedBox(height: 7.0,),
                  Text("932",style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'RenogareSoft',
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 3.0,),
                  Container(
                    margin: EdgeInsets.only(right: 4.0),
                    child: Text("Finished Order",style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                      fontFamily: 'RenogareSoft',
                    ),
                    ),
                  ),
                ],
              )
            ),
            SizedBox(width: 15.0,),
            Container(
                padding: EdgeInsets.only(top: 10.0,left: 10.0),
                height: 110.0,
                width: 120.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child:Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Icon(Icons.check_circle_outlined,color: Colors.amberAccent,)),
                    SizedBox(height: 7.0,),
                    Text("1,032",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'RenogareSoft',
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 3.0,),
                    Container(
                      margin: EdgeInsets.only(right: 7.0),
                      child: Text("Order delivered",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: 'RenogareSoft',
                      ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(width: 15.0,),
            Container(
                padding: EdgeInsets.only(top: 10.0,left: 10.0),
                height: 110.0,
                width: 120.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.warning_amber,color: Colors.red,)),
                    SizedBox(height: 7.0,),
                    Container(
                      margin: EdgeInsets.only(right: 3.0),
                      child: Text("102",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'RenogareSoft',
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Container(
                      margin: EdgeInsets.only(right: 7.0),
                      child: Text("Order Canceled",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontFamily: 'RenogareSoft',
                      ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
        SizedBox(height: 20.0,),
        Column(
          children: [
            Container(
            padding: EdgeInsets.only(left: 20.0,bottom: 70.0),
            margin: EdgeInsets.only(left: 0.0),
            height: 130,
            width: 390.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.green.shade500,
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:2.0),
                        child: Icon(Icons.arrow_downward_rounded,color: Colors.white,size: 10,),
                      ),
                      Icon(Icons.camera_alt_outlined,color: Colors.white,size: 15,),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 13.0,left: 10.0),
                      child: Text("Todays Earning",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 8,
                        fontFamily: 'Roboto Slab',
                      ),
                      ),
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0,top: 2.0),
                  child: Text("\$11.240",style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'RenogareSoft',

                  ),
                  ),
                ),
                  ],
                ),
              SizedBox(width: 135.0,),
                Row(
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top:2.0),
                            child: Icon(Icons.arrow_upward_outlined,color: Colors.white,size: 10,),
                          ),
                          Icon(Icons.camera_alt_outlined,color: Colors.white,size: 15,),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 13.0,left: 10.0),
                      child: Text("Target Earning",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 8,
                        fontFamily: 'Roboto Slab',
                      ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0,top: 2.0),
                      child: Text("\$15.000",style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'RenogareSoft',
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
              ),
            SizedBox(height: 20.0,),
            Container(
              height: 70.0,
              width: 380.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(Icons.album_rounded,color: Colors.white,size: 24,),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 13.0,left: 16.0),
                        child: Text("My Points",style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontFamily: 'Roboto Slab',
                        ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0,top: 2.0),
                        child: Text("3456",style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'RenogareSoft',
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 150.0,),
                  Text("See rewards",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontFamily: 'Roboto Slab',
                  ),
                  ),
                  SizedBox(width: 5.0,),
                  GestureDetector(
                    onTap: (){
                      print("button Clicked");

                    },
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(Icons.chevron_right,color: Colors.grey,size: 20,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


