import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/models/vehicle_fuel.dart';
import 'package:vehicle/public_widgets/app_bar.dart';
import 'package:vehicle/screens/add_vehicle/local_widgets/maker_tile.dart';

class SelectFuel extends StatelessWidget {

  final List<VehicleFuel> vehicleFuelList = [
    VehicleFuel(name: 'Petrol'),
    VehicleFuel(name: 'Diesel'),
    VehicleFuel(name: 'CNG'),
    VehicleFuel(name: 'Petrol + CNG'),
    VehicleFuel(name: 'Electric'),
    VehicleFuel(name: 'Hybrid'),
  ];

  @override
  Widget build(BuildContext context) {
    Vehicle vehicle = Provider.of<Vehicle>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: CustomeAppBar(
          title: 'Select Fuel',
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: vehicleFuelList.length,
          itemBuilder: (context, i){
            return MakerTile(
              name: vehicleFuelList[i].name,
              func: (){
                print(vehicle.vehicleNumber);
                vehicle.setFuel = vehicleFuelList[i].name;
                Navigator.pushNamed(context, 'SelectTransmission');
              },
            );
          },
        ),
      ),
    );
  }
}