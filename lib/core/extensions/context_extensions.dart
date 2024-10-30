import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension Theme on BuildContext {
  TextStyle get fontStyle => GoogleFonts.roboto(color: Colors.black);
}
