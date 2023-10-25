import 'package:flutter/material.dart';
import 'package:gomeal/allfiles/search_page.dart';
class HeadDashboard extends StatelessWidget {
  const HeadDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 0.0,),
              padding: EdgeInsets.only(left: 50.0,top: 30.0),
              child: Text("Hello, Samantha",
                style: TextStyle(
                    fontFamily: 'RenogareSoft',
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SearchBars(hintText: 'Search here..', width: 350,height: 50,),
          ],
        ),
    ],
    );
  }
}
