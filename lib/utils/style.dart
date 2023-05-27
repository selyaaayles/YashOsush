import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Colors
var theme = Color.fromRGBO(195, 194, 253, 1);
var maintxt = Color.fromRGBO(85, 65, 213, 1);
var heading = Color.fromARGB(255, 0, 0, 0);
var icon = const Color(0xFFB8BCCB);
var text = Color.fromARGB(255, 172, 172, 172);

// TextStyles
TextStyle nametext = GoogleFonts.iceberg(
    fontSize: 24, fontWeight: FontWeight.w400, color: maintxt);
TextStyle descrtext = GoogleFonts.poppins(
    fontSize: 16, fontWeight: FontWeight.w400, color: heading);
TextStyle heading1 = GoogleFonts.poppins(
    fontSize: 20, fontWeight: FontWeight.w600, color: heading);
TextStyle heading2 = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w600, color: maintxt);
TextStyle heading3 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: icon);
TextStyle heading4 = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w600, color: maintxt);
TextStyle bottom = GoogleFonts.poppins(
    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white);

// Gap
var large = 30.0;
var medium = 20.0;
var small = 15.0;
var xsmall = 10.0;
