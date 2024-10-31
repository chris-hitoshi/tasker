import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension Theme on BuildContext {
  TextStyle get fontStyle => GoogleFonts.roboto(color: Colors.black);

  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  Color get grey => const Color(0x42585858);
  Color get lightGrey => const Color(0xFFF9F9F9);
  Color get blue => const Color(0xFF03658C);
}
