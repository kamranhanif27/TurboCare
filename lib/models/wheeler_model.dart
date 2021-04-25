class WheelerModel {
  final String name;

  WheelerModel({this.name});

  factory WheelerModel.fromJson(Map<String, dynamic> json) {
    return WheelerModel(
      name: json['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}