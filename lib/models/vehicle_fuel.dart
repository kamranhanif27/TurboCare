class VehicleFuel {
  final String name;

  VehicleFuel({this.name});

  factory VehicleFuel.fromJson(Map<String, dynamic> json) {
    return VehicleFuel(
      name: json['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}