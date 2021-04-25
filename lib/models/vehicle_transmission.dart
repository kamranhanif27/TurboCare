class VehicleTransmission {
  final String name;

  VehicleTransmission({this.name});

  factory VehicleTransmission.fromJson(Map<String, dynamic> json) {
    return VehicleTransmission(
      name: json['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}