import 'package:flutter/material.dart';

class FlatIconButton extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Function() onPressed;

  FlatIconButton({this.iconData, this.title, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
        onPressed: onPressed, icon: Icon(iconData), label: Text(title));
  }
}
