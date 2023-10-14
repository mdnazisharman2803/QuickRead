import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Size size;
  final double borderRadius;
  final String buttonName;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  CustomButton({
    super.key,
    required this.onPressed,
    required this.size,
    required this.borderRadius,
    required this.buttonName,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: size,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        buttonName,
        style: GoogleFonts.spaceGrotesk(
          fontWeight: FontWeight.bold,
          color: textColor,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
