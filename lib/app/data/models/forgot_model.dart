// To parse this JSON data, do
//
//     final forgotModel = forgotModelFromJson(jsonString);

import 'dart:convert';

ForgotModel forgotModelFromJson(String str) =>
    ForgotModel.fromJson(json.decode(str));

String forgotModelToJson(ForgotModel data) => json.encode(data.toJson());

class ForgotModel {
  ForgotModel({
    required this.email,
  });

  String email;

  factory ForgotModel.fromJson(Map<String, dynamic> json) => ForgotModel(
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
      };
}
