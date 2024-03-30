import 'dart:convert';

import 'package:ensiklotari/app/data/Service/network_handler.dart';
import 'package:ensiklotari/app/data/models/login_model.dart';
import 'package:ensiklotari/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginController extends GetxController {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  static const IconData facebook =
      IconData(0xe255, fontFamily: 'MaterialIcons');

  void loginModel() async {
    LoginModel loginModel = LoginModel(
        email: emailEditingController.text,
        password: passwordEditingController.text);
    var response =
        await NetworkHandler.post(loginModelToJson(loginModel), "/api/login");
    var data = json.decode(response)["meta"];
    var dataisi = json.decode(response)["data"];
    var token = dataisi["token"];
    print(token);
    print(data);
    await NetworkHandler.storeToken(token);

    if (data["code"] == 200) {
      Get.toNamed(Routes.DASHBOARD);
    } else {}
  }

  Widget makeInput({controller, iconPref, hintText, obsureText = false}) {
    return TextField(
      cursorColor: Colors.black,
      obscureText: obsureText,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 5),
        hintText: hintText,
        hintStyle: GoogleFonts.publicSans(
          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xFF442F90),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(
            color: Color(0xFF442F90),
          ),
        ),
      ),
    );
  }
}
