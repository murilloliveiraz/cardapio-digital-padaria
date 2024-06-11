import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle SansBold(double size){
  return GoogleFonts.dmSans(
    fontSize: size,
    fontWeight: FontWeight.bold,
    color: Color(0xFF501c09)
  );
}

TextStyle SansMedium(double size){
  return GoogleFonts.dmSans(
    fontSize: size,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFCAF3C)
  );
}

TextStyle SansNormal(double size){
  return GoogleFonts.dmSans(
    fontSize: size,
    fontWeight: FontWeight.normal,
    color: Color(0xFFFFFFFF)
  );
}