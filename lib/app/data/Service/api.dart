import 'package:dio/dio.dart';

class ApiService {
  var baseURL = "https://api.ensiklotari.com";
  var dio = Dio();

  Future<dynamic> postLogin(String email, String password) async {
    Map<String, dynamic> formData = {
      "email": email,
      "password": password,
    };
    try {
      var response = await dio.post("$baseURL/v1/auth/login", data: formData);
      print("Hasilnya -->${response.data}");
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {
      print("error di -> $e");
    }
  }
}
