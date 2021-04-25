import 'package:flutter/material.dart';

class CustomeFloatingActionButton extends StatelessWidget {
  final Function function;
  final IconData icon;

  const CustomeFloatingActionButton({Key key, this.function, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: function,
      child: Icon(icon),
    );
  }
}