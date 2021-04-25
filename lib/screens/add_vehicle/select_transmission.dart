import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/models/vehicle_transmission.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/screens/add_vehicle/local_widgets/maker_tile.dart';
import 'package:vehicle/services/local_database.dart';

class SelectTransmission extends StatelessWidget {

  final List<VehicleTransmission> vehicleTransmissionList = [
    VehicleTransmission(name: 'Manual'),
    VehicleTransmission(name: 'Automatic'),
  ];

  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context, listen: false);
    DatabaseHelper db = Provider.of<DatabaseHelper>(context, listen: false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(
          title: 'Select Transmission',
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: vehicleTransmissionList.length,
          itemBuilder: (context, i){
            return MakerTile(
              name: vehicleTransmissionList[i].name,
              func: () async{
                vehicle.setTransmission = vehicleTransmissionList[i].name;
                await db.insert({
                  'vehicleNumber': vehicle.vehicleNumber,
                  'maker': vehicle.maker,
                  'model': vehicle.model,
                  'fuel': vehicle.fuel,
                  'transmission': vehicleTransmissionList[i].name,
                });
                Navigator.pushNamed(context, '/');
              },
            );
          },
        ),
      ),
    );
  }
}