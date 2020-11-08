import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  const Inputfield({
    Key key,
    this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFF2D55), width: 2.0),
            ),
            hintText: hintText),
      ),
    );
  }
}
