import 'package:flutter/material.dart';

class OrderPageWidget extends StatefulWidget {
  const OrderPageWidget({super.key});

  @override
  State<OrderPageWidget> createState() => _OrderPageWidgetState();
}

class _OrderPageWidgetState extends State<OrderPageWidget> {
  int selectedContainer = 4;
  bool isorder1 = true;
  bool isorder2 = false;
  bool isorder3 = false;
  bool isorder4 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              selectedContainer = 4;
            });
          },
         child: Container(
          padding: EdgeInsets.only(top: 4.0,left: 20.0),
          height: 60.0,
          width: 260.0,
          decoration: BoxDecoration(
          color: selectedContainer == 4 ? Colors.amber.withOpacity(0.1) : Colors.white,
            border: Border.all(color: selectedContainer == 4 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(text: "Order#1\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                  children: <TextSpan>[
                    TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                  ]
              ),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                        color: Colors.amber,
                        fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                        children: <TextSpan>[
                          TextSpan(text: "\202.00",style: TextStyle(
                              color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                        ]
                    ),
                    ),
                  ),
              Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
               color: selectedContainer == 4 ? Colors.amber : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
              child:Icon(Icons.chevron_right,
                  color:selectedContainer == 4 ? Colors.white : Colors.grey,
                 size: 20.0,
              ),
              ),
              ),
                ],
              ),
            ],
          ),
        ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
           setState(() {
             selectedContainer = 5;
             isorder1 = false;
             isorder2 = true;
             isorder3 = false;
             isorder4 = false;
           });
          },
          child: Container(
            padding: EdgeInsets.only(top: 4.0,left: 20.0),
            height: 60.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: selectedContainer == 5 ? Colors.amber.withOpacity(0.1) : Colors.white,
              border: Border.all(color: selectedContainer == 5 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Order#2\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                    children: <TextSpan>[
                      TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                    ]
                ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\202.00",style: TextStyle(
                                color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                          ]
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: selectedContainer == 5 ? Colors.amber : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child:Icon(Icons.chevron_right,
                          color:selectedContainer == 5 ? Colors.white : Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
           setState(() {
             selectedContainer = 6;
           });
          },
          child: Container(
            padding: EdgeInsets.only(top: 4.0,left: 20.0),
            height: 60.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: selectedContainer == 6 ? Colors.amber.withOpacity(0.1) : Colors.white,
              border: Border.all(color: selectedContainer == 6 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Order#3\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                    children: <TextSpan>[
                      TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                    ]
                ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\202.00",style: TextStyle(
                                color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                          ]
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: selectedContainer == 6 ? Colors.amber : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child:Icon(Icons.chevron_right,
                          color:selectedContainer == 6 ? Colors.white : Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
           setState(() {
             selectedContainer = 7;
           });
          },
          child: Container(
            padding: EdgeInsets.only(top: 4.0,left: 20.0),
            height: 60.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: selectedContainer == 7 ? Colors.amber.withOpacity(0.1) : Colors.white,
              border: Border.all(color: selectedContainer == 7 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Order#4\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                    children: <TextSpan>[
                      TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                    ]
                ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\202.00",style: TextStyle(
                                color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                          ]
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: selectedContainer == 7 ? Colors.amber : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child:Icon(Icons.chevron_right,
                          color:selectedContainer == 7 ? Colors.white : Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
            setState(() {
              selectedContainer = 8;
            });
          },
          child: Container(
            padding: EdgeInsets.only(top: 4.0,left: 20.0),
            height: 60.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: selectedContainer == 8 ? Colors.amber.withOpacity(0.1) : Colors.white,
              border: Border.all(color: selectedContainer == 8 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Order#5\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                    children: <TextSpan>[
                      TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                    ]
                ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\202.00",style: TextStyle(
                                color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                          ]
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: selectedContainer == 8 ? Colors.amber : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child:Icon(Icons.chevron_right,
                          color:selectedContainer == 8 ? Colors.white : Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0,),
        InkWell(
          onTap: (){
             setState(() {
               selectedContainer = 9;
             });
          },
          child: Container(
            padding: EdgeInsets.only(top: 4.0,left: 20.0),
            height: 60.0,
            width: 260.0,
            decoration: BoxDecoration(
              color: selectedContainer == 9 ? Colors.amber.withOpacity(0.1) : Colors.white,
              border: Border.all(color: selectedContainer == 9 ? Colors.amber : Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(text: "Order#6\n",style: TextStyle(color: Colors.black,fontSize: 13,fontFamily: 'Poppins'),
                    children: <TextSpan>[
                      TextSpan(text: "\June 1,2020,08:22 AM",style: TextStyle(color: Colors.grey.shade400,fontSize: 8,fontFamily: 'Poppins'),),
                    ]
                ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: RichText(text: TextSpan(text: "\$",style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(text: "\202.00",style: TextStyle(
                                color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold,fontFamily: 'Poppins')),
                          ]
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.only(bottom: 10.0,left: 1.0),
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: selectedContainer == 9 ? Colors.amber : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child:Icon(Icons.chevron_right,
                          color:selectedContainer == 9 ? Colors.white : Colors.grey,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
