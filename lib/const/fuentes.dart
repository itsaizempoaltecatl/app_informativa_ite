import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueIte = const Color(0xFF1b396a);

TextStyle textStyleMonserrat(
    {double? size, FontWeight? fontWeight, Color? color}) {
  return GoogleFonts.montserrat(
      fontSize: size, fontWeight: fontWeight, color: color);
}
