import 'package:flutter/material.dart';

class MakerTile extends StatelessWidget {
  final String name;
  final Function func;

  const MakerTile({Key key, this.name, this.func}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.only(bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 18.0
              ),
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}