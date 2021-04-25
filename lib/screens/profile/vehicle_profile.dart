import 'package:flutter/material.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/public_widgets/app_bar.dart';

class VehicleProfile extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleProfile({Key key, this.vehicle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(260),
        child: Container(
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomeAppBar(
                title: ' ',
                elevation: 0.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${vehicle.model.toUpperCase()} ${vehicle.fuel.toUpperCase()}',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '${vehicle.vehicleNumber}',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'MAKE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      vehicle.maker.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'MODEL',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0
                      ),
                    ),
                    Text(
                      vehicle.maker.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'FUEL TYPE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      vehicle.fuel.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'TRANSMISSION',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0
                      ),
                    ),
                    Text(
                      vehicle.transmission.toUpperCase(),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}