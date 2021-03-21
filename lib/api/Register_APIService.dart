import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/Registration_model.dart';

class Register_APIService {
  Future<RegistraionResponseModel> registraionResponseModel(RegistraionRequestModel requestModel) async {
    String url = "https://reqres.in/api/login";

    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return  RegistraionResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
