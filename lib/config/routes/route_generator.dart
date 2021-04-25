import 'package:flutter/material.dart';
import 'package:vehicle/screens/add_vehicle/create_vehicle.dart';
import 'package:vehicle/screens/add_vehicle/select_class.dart';
import 'package:vehicle/screens/add_vehicle/select_fuel.dart';
import 'package:vehicle/screens/add_vehicle/select_maker.dart';
import 'package:vehicle/screens/add_vehicle/select_model.dart';
import 'package:vehicle/screens/add_vehicle/select_transmission.dart';
import 'package:vehicle/screens/home_page/home_page.dart';
import 'package:vehicle/screens/profile/vehicle_profile.dart';

class RouteGenerator {
  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final Map args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomePage()
        );
      case 'CreateVehicle':
        return MaterialPageRoute(
          builder: (_) => CreateVehicleProfile()
        );
      case 'SelectMaker':
        return MaterialPageRoute(
          builder: (_) => SelectMaker(wheelers: args['wheeler'],)
        );
      case 'SelectModel':
        return MaterialPageRoute(
          builder: (_) => SelectModel(wheels: args['wheels'], maker: args['maker'],)
        );
      case 'SelectFuel':
        return MaterialPageRoute(
          builder: (_) => SelectFuel()
        );
      case 'SelectTransmission':
        return MaterialPageRoute(
          builder: (_) => SelectTransmission()
        );
      case 'SelectClass':
        return MaterialPageRoute(
          builder: (_) => SelectClass()
        );
      case 'VehicleProfile':
        return MaterialPageRoute(
          builder: (_) => VehicleProfile(vehicle: args['vehicle'],)
        );
    }
  }
        
  // ignore: unused_element
  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ROUTE ERROR!')
        )
      )
    );
  }
}
