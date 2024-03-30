import 'dart:convert';

import 'package:ensiklotari/app/data/Service/network_handler.dart';
import 'package:ensiklotari/app/data/models/register_model.dart';
import 'package:ensiklotari/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterController extends GetxController {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  void registerModel() async {
    RegisterModel registerModel = RegisterModel(
      email: emailEditingController.text,
      password: passwordEditingController.text,
      password2: passwordEditingController.text,
      name: nameEditingController.text,
      username: nameEditingController.text,
    );
    var response = await NetworkHandler.post(
        registerModelToJson(registerModel), "/api/register");

    var data = json.decode(response)["meta"];
    var dataisi = json.decode(response)["data"];
    var token = dataisi?["token"];
    print(token);
    print(dataisi);
    await NetworkHandler.storeToken(token);

    if (data["code"] == 200) {
      Get.toNamed(Routes.HOME);
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
