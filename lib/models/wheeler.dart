class Wheeler {
  final String name;
  final String wheelerClass;

  Wheeler({this.name, this.wheelerClass});

  factory Wheeler.fromJson(Map<String, dynamic> json) {
    return Wheeler(
      name: json['name'],
      wheelerClass: json['wheelerClass']
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'wheelerClass': wheelerClass
    };
  }
}