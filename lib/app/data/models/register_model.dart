// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
  RegisterModel({
    this.name,
    this.username,
    required this.email,
    this.password2,
    required this.password,
  });

  String? name;
  String? username;
  String email;
  String? password2;
  String password;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        password2: json["password2"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "username": username,
        "email": email,
        "password2": password2,
        "password": password,
      };
}
