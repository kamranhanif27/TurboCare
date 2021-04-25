import 'package:flutter/material.dart';

class Vehicle extends ChangeNotifier {
  String vehicleNumber;
  String wheelerClass;
  String maker;
  String model;
  String fuel;
  String transmission;

  Vehicle({
    this.vehicleNumber,
    this.wheelerClass,
    this.maker,
    this.model,
    this.fuel,
    this.transmission,
  });

  set setVehicleNumber(String value) => vehicleNumber = value;
  set setMaker(String value) => maker = value;
  set setWheelerClass(String value) => wheelerClass = value;
  set setModel(String value) => model = value;
  set setFuel(String value) => fuel = value;
  set setTransmission(String value) => transmission = value;

  

  factory Vehicle.fromJson(Map<String, dynamic> data){
    return Vehicle(
      vehicleNumber: data['vehicleNumber'],
      maker: data['maker'],
      model: data['model'],
      wheelerClass: data['wheelerClass'],
      fuel: data['fuel'],
      transmission: data['transmission']
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'vehicleNubmer': vehicleNumber,
      'maker': maker,
      'model': model,
      'wheelerClass': wheelerClass,
      'fuel': fuel,
      'transmission': transmission
    };
  }

  
}
