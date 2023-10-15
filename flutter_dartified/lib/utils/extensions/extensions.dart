import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension Margin on Widget {
  addMarginizedContainer() {
    return Container(
      margin: const EdgeInsets.only(
        top: 82.0,
        left: 16.0,
        right: 16.0,
      ),
      child: this,
    );
  }
}

extension TextStyleExtension on TextStyle {
  TextStyle get spaceGrotesk => GoogleFonts.spaceGrotesk(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      );

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
  TextStyle colored(Color color) => copyWith(color: color);
  TextStyle sized(double size) => copyWith(fontSize: size);
}
