import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeAll extends StatelessWidget {
  final String text, buttonText;
  final TextStyle textStyle;
  const SeeAll({Key key, this.text, this.buttonText, this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: textStyle),
        Text(
          buttonText,
          style: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ],
    );
  }
}
