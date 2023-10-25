import 'package:flutter/material.dart';
import 'package:gomeal/responsive/desktop_scaffold.dart';
import 'package:gomeal/responsive/mobile_scaffold.dart';
import 'package:gomeal/responsive/responsive_layout.dart';
import 'package:gomeal/responsive/tablet_scaffold.dart';
import 'package:gomeal/side_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.black),
      ),
      home: SideBar(),
    );
  }
}

