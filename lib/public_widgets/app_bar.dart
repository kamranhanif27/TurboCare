import 'package:flutter/material.dart';


class CustomeAppBar extends StatelessWidget {
  final String title;
  final double elevation;

  const CustomeAppBar({Key key, this.title, this.elevation = 1.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      elevation: elevation,
    );
  }
}