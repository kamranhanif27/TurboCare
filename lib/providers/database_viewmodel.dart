import 'package:flutter/cupertino.dart';
import 'package:vehicle/models/vehicle.dart';
import 'package:vehicle/services/local_database.dart';

class DatabaseViewModel extends ChangeNotifier{

  List<Vehicle> vehicleList = [];

  void loadVehicles() async{
    var vehicles = await DatabaseHelper().queryAll();
    vehicleList = vehicles.map((e) => Vehicle.fromJson(e)).toList();
    notifyListeners();
  }

}