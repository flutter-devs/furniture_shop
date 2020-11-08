import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final Color color, textColor;
  const Button({
    Key key,
    this.onPressed,
    this.buttonText,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FlatButton(
            onPressed: onPressed,
            child: Text(buttonText,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600, fontSize: 16)),
            color: color,
            textColor: textColor,
          ),
        ],
      ),
    );
  }
}
