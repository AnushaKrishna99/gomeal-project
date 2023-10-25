import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData(
  primaryColor: Colors.black, // Set the primary color to black
  hintColor: Colors.black, // Set the accent color to black
  scaffoldBackgroundColor: Colors.black54, // Set the background color to black (you can change this)
  textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.black),
  // Add other theme properties here
);
