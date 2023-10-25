import 'package:flutter/material.dart';
import 'package:gomeal/allfiles/recent_orders.dart';

import '../responsive/responsive_builder.dart';

class PopularDishes extends StatefulWidget {
  const PopularDishes({super.key});

  @override
  State<PopularDishes> createState() => _PopularDishesState();
}

class _PopularDishesState extends State<PopularDishes> {
  bool isFavorite1 = false;
  bool isFavorite2 = false;
  bool isFavorite3 = false;

  List<bool> isStarFilled1 = [false,false,false,false,false];
  List<bool> isStarFilled2 = [false,false,false,false,false];
  List<bool> isStarFilled3 = [false,false,false,false,false];
  void toggleStar(List<bool> starList, int index) {
    setState(() {
      for (int i = 0; i < starList.length; i++) {
        starList[i] = i <= index;
      }
    });
  }

  void toggleFavorite(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        isFavorite1 = !isFavorite1;
      } else if (containerNumber == 2) {
        isFavorite2 = !isFavorite2;
      } else if (containerNumber == 3) {
        isFavorite3 = !isFavorite3;
      }
    });
  }

   @override
  Widget build(BuildContext context) {
     return ResponsiveBuilder(
         mobileBuilder: (BuildContext context, BoxConstraints constraints) {
           return Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 30.0,left: 30.0),
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child:  Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Text("Popular Dishes",
                               style: TextStyle(
                                   fontFamily: 'RenogareSoft',
                                   color: Colors.black,
                                   fontSize: 15,
                                   fontWeight: FontWeight.w700
                               ),
                             ),
                           ],
                         ),
                         TextButton(onPressed: (){},
                           child: Row(
                             children: [
                               Text("View more",
                                 style: TextStyle(
                                     fontFamily: 'Mitr',
                                     color: Colors.amber,
                                     fontSize: 14,
                                     fontWeight: FontWeight.normal
                                 ),
                               ),
                               Icon(Icons.chevron_right,
                                 color: Colors.amber,size: 20.0,
                               ),
                             ],
                           ),
                         ),
                       ],
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 8,),
               Container(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 20.0),
                         child: Stack(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 20.0),
                               height: 220.0,
                               width: MediaQuery.of(context).size.width/9.5,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.only(right: 20.0),
                                 child: Column(
                                   children: [
                                     Container(
                                       child: Image.asset("assets/images/burger1.jpeg",
                                         height: 150.0,
                                         width: MediaQuery.of(context).size.width/10,
                                       ),
                                     ),
                                     SizedBox(height: 5,),
                                     Container(
                                       margin: EdgeInsets.only(left: 20.0,top: 0.0),
                                       child: Row(
                                         children:[
                                           for (int i = 0; i < 5; i++)
                                             GestureDetector(
                                               onTap: (){
                                                 toggleStar(isStarFilled1,i);
                                               },
                                               child: Icon(
                                                 isStarFilled1[i] ? Icons.star : Icons.star_border,
                                                 color: isStarFilled1[i] ? Colors.amberAccent : Colors.black,
                                                 size: 16,
                                               ),
                                             ),
                                         ],
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                       child: RichText(
                                         text: TextSpan(
                                           text: 'Fish Burger \n',
                                           style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                           children: <TextSpan>[
                                             TextSpan(
                                               text: '',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 10.0,
                                                 color: Colors.black,
                                               ),
                                             ),
                                             TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                             ),
                                             TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                           ],
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 20.0,
                               left: 20.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 2.0),
                                     padding: EdgeInsets.only(top: 2.0),
                                     height: 20.0,
                                     width: 50.0,
                                     decoration: BoxDecoration(
                                       color: Colors.redAccent,
                                       borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(7.0),
                                           bottomRight: Radius.circular(7.0)
                                       ),
                                     ),
                                     child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 130.0),
                                     child: GestureDetector(
                                       onTap: () {
                                         toggleFavorite(1);
                                       },
                                       child: Icon(
                                         isFavorite1 ? Icons.favorite : Icons.favorite,
                                         color: isFavorite1 ? Colors.red : Colors.grey.shade300,
                                         size: 20,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 0.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/9.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           child: Image.asset("assets/images/burger2.png.crdownload.png",
                                             height: 150.0,
                                             width: MediaQuery.of(context).size.width/10,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 20.0,top: 5),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled2,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled2[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled2[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 70.0,top: 0.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Beef Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         )
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 130.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(2);
                                         },
                                         child: Icon(
                                           isFavorite2 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite2 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 30.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/9.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           margin: EdgeInsets.only(top: 30.0),
                                           child: Image.asset("assets/images/burger3.jpeg",
                                             height: 100.0,
                                             width: MediaQuery.of(context).size.width/30,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 16.0,top: 20.0),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled3,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled3[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled3[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Cheese Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '   \$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         ),
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 130.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(3);
                                         },
                                         child: Icon(
                                           isFavorite3 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite3 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                     ]
                 ),
               ),
               RecentOrder()
             ],
           );
         },
         tabletBuilder: (BuildContext context, BoxConstraints constraints) {
           return Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 30.0,left: 30.0),
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Text("Popular Dishes",
                           style: TextStyle(
                               fontFamily: 'RenogareSoft',
                               color: Colors.black,
                               fontSize: 15,
                               fontWeight: FontWeight.w700
                           ),
                         ),
                       ],
                     ),
                     TextButton(onPressed: (){},
                       child: Row(
                         children: [
                           Text("View more",
                             style: TextStyle(
                                 fontFamily: 'Mitr',
                                 color: Colors.amber,
                                 fontSize: 14,
                                 fontWeight: FontWeight.normal
                             ),
                           ),
                           Icon(Icons.chevron_right,
                             color: Colors.amber,size: 20.0,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 8,),
               Container(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 20.0),
                         child: Stack(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 20.0),
                               height: 220.0,
                               width: MediaQuery.of(context).size.width/6.5,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.only(right: 20.0),
                                 child: Column(
                                   children: [
                                     Container(
                                       child: Image.asset("assets/images/burger1.jpeg",
                                         height: 150.0,
                                         width: MediaQuery.of(context).size.width/13,
                                       ),
                                     ),
                                     SizedBox(height: 5,),
                                     Container(
                                       margin: EdgeInsets.only(left: 20.0,top: 0.0),
                                       child: Row(
                                         children:[
                                           for (int i = 0; i < 5; i++)
                                             GestureDetector(
                                               onTap: (){
                                                 toggleStar(isStarFilled1,i);
                                               },
                                               child: Icon(
                                                 isStarFilled1[i] ? Icons.star : Icons.star_border,
                                                 color: isStarFilled1[i] ? Colors.amberAccent : Colors.black,
                                                 size: 16,
                                               ),
                                             ),
                                         ],
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                       child: RichText(
                                         text: TextSpan(
                                           text: 'Fish Burger \n',
                                           style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                           children: <TextSpan>[
                                             TextSpan(
                                               text: '',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 10.0,
                                                 color: Colors.black,
                                               ),
                                             ),
                                             TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                             ),
                                             TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                           ],
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 20.0,
                               left: 20.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 2.0),
                                     padding: EdgeInsets.only(top: 2.0),
                                     height: 20.0,
                                     width: 50.0,
                                     decoration: BoxDecoration(
                                       color: Colors.redAccent,
                                       borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(7.0),
                                           bottomRight: Radius.circular(7.0)
                                       ),
                                     ),
                                     child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 110.0),
                                     child: GestureDetector(
                                       onTap: () {
                                         toggleFavorite(1);
                                       },
                                       child: Icon(
                                         isFavorite1 ? Icons.favorite : Icons.favorite,
                                         color: isFavorite1 ? Colors.red : Colors.grey.shade300,
                                         size: 20,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 0.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/6.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           child: Image.asset("assets/images/burger2.png.crdownload.png",
                                             height: 150.0,
                                             width: MediaQuery.of(context).size.width/13,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 20.0,top: 5),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled2,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled2[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled2[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 70.0,top: 0.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Beef Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         )
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 110.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(2);
                                         },
                                         child: Icon(
                                           isFavorite2 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite2 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 30.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/6.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           margin: EdgeInsets.only(top: 30.0),
                                           child: Image.asset("assets/images/burger3.jpeg",
                                             height: 100.0,
                                             width: MediaQuery.of(context).size.width/20,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 16.0,top: 20.0),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled3,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled3[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled3[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Cheese Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '   \$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         ),
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 110.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(3);
                                         },
                                         child: Icon(
                                           isFavorite3 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite3 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                     ]
                 ),
               ),
               RecentOrder()
             ],
           );
         },
         desktopBuilder: (BuildContext context, BoxConstraints constraints) {

           return Column(
             children: [
               Container(
                 margin: EdgeInsets.only(top: 30.0,left: 30.0),
                 padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Text("Popular Dishes",
                           style: TextStyle(
                               fontFamily: 'RenogareSoft',
                               color: Colors.black,
                               fontSize: 15,
                               fontWeight: FontWeight.w700
                           ),
                         ),
                       ],
                     ),
                     TextButton(onPressed: (){},
                       child: Row(
                         children: [
                           Text("View more",
                             style: TextStyle(
                                 fontFamily: 'Mitr',
                                 color: Colors.amber,
                                 fontSize: 14,
                                 fontWeight: FontWeight.normal
                             ),
                           ),
                           Icon(Icons.chevron_right,
                             color: Colors.amber,size: 20.0,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               SizedBox(height: 8,),
               Container(
                 width: MediaQuery.of(context).size.width/1.2,
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         margin: EdgeInsets.only(left: 20.0),
                         child: Stack(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: 20.0),
                               height: 220.0,
                               width: MediaQuery.of(context).size.width/6.5,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0),
                               ),
                               child: Padding(
                                 padding: EdgeInsets.only(right: 20.0),
                                 child: Column(
                                   children: [
                                     Container(
                                       child: Image.asset("assets/images/burger1.jpeg",
                                         height: 150.0,
                                         width: MediaQuery.of(context).size.width/13,
                                       ),
                                     ),
                                     SizedBox(height: 5,),
                                     Container(
                                       margin: EdgeInsets.only(left: 20.0,top: 0.0),
                                       child: Row(
                                         children:[
                                           for (int i = 0; i < 5; i++)
                                             GestureDetector(
                                               onTap: (){
                                                 toggleStar(isStarFilled1,i);
                                               },
                                               child: Icon(
                                                 isStarFilled1[i] ? Icons.star : Icons.star_border,
                                                 color: isStarFilled1[i] ? Colors.amberAccent : Colors.black,
                                                 size: 16,
                                               ),
                                             ),
                                         ],
                                       ),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                       child: RichText(
                                         text: TextSpan(
                                           text: 'Fish Burger \n',
                                           style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                           children: <TextSpan>[
                                             TextSpan(
                                               text: '',
                                               style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 10.0,
                                                 color: Colors.black,
                                               ),
                                             ),
                                             TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                             ),
                                             TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                           ],
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 20.0,
                               left: 20.0,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Container(
                                     margin: EdgeInsets.only(left: 2.0),
                                     padding: EdgeInsets.only(top: 2.0),
                                     height: 20.0,
                                     width: 50.0,
                                     decoration: BoxDecoration(
                                       color: Colors.redAccent,
                                       borderRadius: BorderRadius.only(
                                           topRight: Radius.circular(7.0),
                                           bottomRight: Radius.circular(7.0)
                                       ),
                                     ),
                                     child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                     ),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(left: 130.0),
                                     child: GestureDetector(
                                       onTap: () {
                                         toggleFavorite(1);
                                       },
                                       child: Icon(
                                         isFavorite1 ? Icons.favorite : Icons.favorite,
                                         color: isFavorite1 ? Colors.red : Colors.grey.shade300,
                                         size: 20,
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 0.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/6.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),
                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           child: Image.asset("assets/images/burger2.png.crdownload.png",
                                             height: 150.0,
                                             width: MediaQuery.of(context).size.width/13,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 20.0,top: 5),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled2,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled2[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled2[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 70.0,top: 0.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Beef Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '\$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         )
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 130.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(2);
                                         },
                                         child: Icon(
                                           isFavorite2 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite2 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.only(right: 30.0),
                         child: Stack(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(left: 20.0),
                                 height: 220.0,
                                 width: MediaQuery.of(context).size.width/6.5,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10.0),

                                 ),
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 20.0),
                                   child: Column(
                                       children: [
                                         Container(
                                           margin: EdgeInsets.only(top: 30.0),
                                           child: Image.asset("assets/images/burger3.jpeg",
                                             height: 100.0,
                                             width: MediaQuery.of(context).size.width/20,
                                           ),
                                         ),
                                         SizedBox(height: 5,),
                                         Container(
                                           margin: EdgeInsets.only(left: 16.0,top: 20.0),
                                           child: Row(
                                             children:[
                                               for (int i = 0; i < 5; i++)
                                                 GestureDetector(
                                                   onTap: (){
                                                     toggleStar(isStarFilled3,i);
                                                   },
                                                   child: Icon(
                                                     isStarFilled3[i] ? Icons.star : Icons.star_border,
                                                     color: isStarFilled3[i] ? Colors.amberAccent : Colors.black,
                                                     size: 16,
                                                   ),
                                                 ),
                                             ],
                                           ),
                                         ),
                                         Padding(
                                           padding: EdgeInsets.only(right: 80.0,top: 2.0),
                                           child: RichText(
                                             text: TextSpan(
                                               text: 'Cheese Burger \n',
                                               style: TextStyle(color: Colors.black,fontFamily:'Poppins',fontSize: 12,fontWeight: FontWeight.w700),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '',
                                                   style: TextStyle(
                                                     fontWeight: FontWeight.bold,
                                                     fontSize: 10.0,
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 TextSpan(text: '   \$',style: TextStyle(color: Colors.amber,fontSize: 13,fontWeight: FontWeight.bold),
                                                 ),
                                                 TextSpan(text: '5.59',style: TextStyle(color: Colors.black,fontSize: 13))
                                               ],
                                             ),
                                           ),
                                         ),
                                       ]


                                   ),),
                               ),
                               Positioned(
                                 top: 20.0,
                                 left: 20.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       margin: EdgeInsets.only(left: 2.0),
                                       padding: EdgeInsets.only(top: 2.0),
                                       height: 20.0,
                                       width: 50.0,
                                       decoration: BoxDecoration(
                                         color: Colors.redAccent,
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(7.0),
                                             bottomRight: Radius.circular(7.0)
                                         ),
                                       ),
                                       child: Text("%15 OFF",style: TextStyle(color: Colors.white,fontSize: 10),
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.only(left: 130.0),
                                       child: GestureDetector(
                                         onTap: () {
                                           toggleFavorite(3);
                                         },
                                         child: Icon(
                                           isFavorite3 ? Icons.favorite : Icons.favorite,
                                           color: isFavorite3 ? Colors.red : Colors.grey.shade300,
                                           size: 20,
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),),
                             ]
                         ),
                       ),
                     ]
                 ),
               ),
               RecentOrder()
             ],
           );
           },
     );
  }
}
