// import 'package:ensiklotari/app/data/ikon_ensiklotari_icons.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:ensiklotari/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

// ignore: must_be_immutable
class LoginView extends GetView<LoginController> {
  var loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    // height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage("assets/images/ensi.png"),
                            height: 82,
                          ),
                        ),
                        // ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              controller.makeInput(
                                  controller:
                                      loginController.emailEditingController,
                                  hintText: "Email atau Nama Pengguna"),
                              SizedBox(
                                height: 10,
                              ),
                              controller.makeInput(
                                  obsureText: true,
                                  controller:
                                      loginController.passwordEditingController,
                                  hintText: "Password"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 30,
                            onPressed: loginController.loginModel,
                            color: Color(0xFF442F90),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Masuk",
                              style: GoogleFonts.publicSans(
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Atau",
                          style: GoogleFonts.publicSans(
                            textStyle: TextStyle(
                              fontSize: 12,
                            ),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            SignInButton(
                              Buttons.FacebookNew,
                              text: "Masuk dengan Facebook",
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SignInButton(
                              Buttons.Google,
                              text: "Masuk dengan Google",
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Belum memiliki akun? ",
                                style: GoogleFonts.publicSans(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.toNamed(Routes.REGISTER),
                                child: Text(
                                  "Daftar",
                                  style: GoogleFonts.publicSans(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.underline),
                                    color: Color(0xFF442F90),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
