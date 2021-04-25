import 'package:dio/dio.dart';
import 'package:vehicle/models/wheeler.dart';
import 'package:vehicle/models/wheeler_model.dart';

class ApiServices {
  Dio _dio = Dio();

  List<Wheeler> wheelerMakerList = [];
  List<WheelerModel> wheelerModelList = [];
  Future<List<Wheeler>> getVehicleMaker(String wheels) async {
    Response response = await _dio
        .get('https://test.turbocare.app/turbo/care/v1/makes?class=$wheels');
    List<dynamic> responseBody = response.data;
    wheelerMakerList = (responseBody)
        .map((e) => Wheeler.fromJson({'name': e, 'wheelerClass': wheels}))
        .toList();
    return wheelerMakerList;
  }

  Future<List<WheelerModel>> getVehicleModel(
      String wheels, String model) async {
    Response response = await _dio.get(
        'https://test.turbocare.app/turbo/care/v1/models?class=$wheels&make=$model');
    List<dynamic> responseBody = response.data;
    wheelerModelList =
        (responseBody).map((e) => WheelerModel.fromJson({'name': e})).toList();
    return wheelerModelList;
  }
}
