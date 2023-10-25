import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  final String hintText;
  final double width;
  final double height;
  final Color cardColor;

  const SearchBars({
    Key? key,
    required this.hintText,
    required this.width,
    required this.height,
    this.cardColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0,right: 30.0),
          width: width,
          height: height,
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: cardColor,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.amber),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}