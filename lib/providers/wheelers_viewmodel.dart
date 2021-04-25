import 'package:flutter/foundation.dart';
import 'package:vehicle/models/wheeler.dart';
import 'package:vehicle/models/wheeler_model.dart';
import 'package:vehicle/services/api_services.dart';

class WheelersViewModel extends ChangeNotifier {

  List<Wheeler> twoWheelersClass = [];
  List<Wheeler> foutWheelersClass = [];
  List<WheelerModel> wheelerModle = [];

  void loadMakerData() async{
    // ignore: unused_local_variable
    twoWheelersClass = await ApiServices().getVehicleMaker('2w');
    foutWheelersClass = await ApiServices().getVehicleMaker('4w');
    notifyListeners();
  }

  void loadModelData(String wheels, String maker) async{
    // ignore: unused_local_variable
    wheelerModle = await ApiServices().getVehicleModel(wheels, maker);
    notifyListeners();
  }

}