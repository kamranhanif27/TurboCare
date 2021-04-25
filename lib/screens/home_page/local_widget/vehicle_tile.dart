import 'package:flutter/material.dart';

class VehicleTile extends StatelessWidget {
  final String vehicleNumber;
  final String maker;
  final String model;
  final Function func;

  const VehicleTile({Key key, this.vehicleNumber, this.maker, this.model, this.func}) : super(key: key);

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vehicleNumber,
                  style: TextStyle(
                    fontSize: 18.0
                  ),
                ),
                Text('$maker  $model'),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
      ),
    );
  }
}