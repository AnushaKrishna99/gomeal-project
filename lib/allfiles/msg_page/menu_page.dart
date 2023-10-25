import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<bool> isCheckedList = List.generate(6, (index) => false); // Initialize with 5 items
  final List<String> imagePaths = [
    'assets/images/burger1.jpeg',
    'assets/images/burger2.jpeg',
    'assets/images/burger3.jpeg',
    'assets/images/favchicken.jpg',
    'assets/images/noodles.jpeg',
    'assets/images/pizza1.png',
  ];

  final List<String> dynamicTexts = [
    'Fish Burger',
    'Chees Burger',
    'Beef Burger',
    'Nuggets',
    'Noodles',
    'Pepproni Pizza',
  ];
  final List<String> button1Texts = [
    'Completed',
    '  Delivring',
    'Completed',
    'Completed',
    '  Delivering',
    ' Canceled',
  ];

  final List<Color> button1Colors = [
    Colors.green.withOpacity(0.1),
    Colors.amberAccent.withOpacity(0.2),
    Colors.green.withOpacity(0.1),
    Colors.green.withOpacity(0.1),
    Colors.amberAccent.withOpacity(0.2),
    Colors.red.withOpacity(0.1),
  ];

  final List<Color> buttonBorderColors = [
    Colors.green,
    Colors.orange,
    Colors.green,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  final List<Color> TextColors = [
    Colors.green,
    Colors.orange,
    Colors.green,
    Colors.green,
    Colors.orange,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowHeight: 80.0,
      columns: [
        DataColumn(
          label: Row(
            children: [
              Transform.scale(
                scale: 0.8, // Adjust the scale factor to resize the checkboxes
                child: Checkbox(
                  activeColor: Colors.amber,
                  value: isCheckedList.isNotEmpty && isCheckedList.every((value) => value),
                  onChanged: (bool? newValue) {
                    setState(() {
                      isCheckedList = List.generate(isCheckedList.length, (index) => newValue ?? false);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        DataColumn(label: Text('Menu',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft')),),
        DataColumn(label: Text('Date',style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
        DataColumn(label: Text('Address',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
        DataColumn(label: Text('Total',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
        DataColumn(label: Text('Actions',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold,fontFamily: 'RenogareSoft'))),
      ],
      rows: List.generate(imagePaths.length, (index) {
        return DataRow(cells: [
          DataCell(
            Transform.scale(
              scale: 0.8, // Adjust the scale factor to resize the checkboxes
              child: Checkbox(
                value: isCheckedList[index],
                activeColor: Colors.amber,
                onChanged: (bool? newValue) {
                  setState(() {
                    isCheckedList[index] = newValue ?? false;
                  });
                },
              ),
            ),
          ),
          DataCell(Row(
            children: [
              Image.asset(
                imagePaths[index],
                height: 30.0,
                width: 30.0,
              ),
              SizedBox(width: 10),
              Text(dynamicTexts[index],style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Poppins',fontWeight: FontWeight.bold),),
            ],
          )),
          DataCell(Text('june 1,2020,08:22 AM${index + 7}',style: TextStyle(color: Colors.grey,fontSize: 8,fontFamily: 'Poppins',fontWeight: FontWeight.bold),)),
          DataCell(
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,size: 15,color: Colors.amber,),
                      SizedBox(width: 3.0,),
                      Text("Elm Street, 23 Yogyakarta",style: TextStyle(color: Colors.black,fontSize: 10,fontFamily: 'Poppins',fontWeight: FontWeight.bold))
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 120.0),
                      child: Text("2.4 km",style: TextStyle(color: Colors.grey,fontSize: 8,fontFamily: 'Poppins',fontWeight: FontWeight.bold),))
                ],
              ),
            )),
          DataCell(
            RichText(text: TextSpan(
                text: "",style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'RenogareSoft'),
                children: <TextSpan>[
                  TextSpan(text: "\$ ",style: TextStyle(color: Colors.amber,fontFamily: 'RenogareSoft'),
                  ),
                  TextSpan(text: "5.99",style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'RenogareSoft'),),
                ]
            )),
           ),
          DataCell(Row(
            children: [
              TextButton(
                onPressed: () {
                  // Handle the button press
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(button1Colors[index]), // Background color
                  foregroundColor: MaterialStateProperty.all(TextColors[index]), // Text color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: buttonBorderColors[index]),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top: 5.0, left: 16.0), // Padding around the text
                  ),
                ),
                child: Container(
                  width: 70.0,
                  child: Text(
                    button1Texts[index],
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.0,),
              TextButton(
                onPressed: () {
                  // Handle the button press
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.orange.shade200), // Text color
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: Colors.orange),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.only(top: 5.0, left: 12.0), // Padding around the text
                  ),
                ),
                child: Container(
                  width: 70.0,
                  child: Text(
                    "Order Again",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 9,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.0,),
              Icon(Icons.more_horiz_outlined,color: Colors.grey,),
            ],
          )),
        ]);
      }),
    );
  }
}
