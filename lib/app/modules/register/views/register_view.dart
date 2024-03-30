import 'package:ensiklotari/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// import '../../../data/ikon_ensiklotari_icons.dart';
import '../controllers/register_controller.dart';

// ignore: must_be_immutable
class RegisterView extends GetView<RegisterController> {
  var registerController = Get.put(RegisterController());
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
                        // SizedBox(
                        //   height: 17,
                        // ),
                        // Text(
                        //   "Masuk",
                        //   style: GoogleFonts.publicSans(
                        //     textStyle: TextStyle(
                        //         fontSize: 16, fontWeight: FontWeight.bold),
                        //     color: Color(0xFF442F90),
                        //   ),
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
                                      registerController.nameEditingController,
                                  hintText: "Nama Pengguna"),
                              SizedBox(
                                height: 10,
                              ),
                              controller.makeInput(
                                  controller:
                                      registerController.emailEditingController,
                                  hintText: "Email"),
                              SizedBox(
                                height: 10,
                              ),
                              controller.makeInput(
                                  obsureText: true,
                                  controller: registerController
                                      .passwordEditingController,
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
                            onPressed: registerController.registerModel,
                            color: Color(0xFF442F90),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "Daftar",
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
                              text: "Daftar dengan Facebook",
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SignInButton(
                              Buttons.Google,
                              text: "Daftar dengan Google",
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
                                "Sudah memiliki akun? ",
                                style: GoogleFonts.publicSans(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.toNamed(Routes.LOGIN),
                                child: Text(
                                  "Masuk",
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
