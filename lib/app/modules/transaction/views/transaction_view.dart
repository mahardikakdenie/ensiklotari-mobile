import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/ensi2.png",
          fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                margin: EdgeInsets.only(right: 100),
                child: TabBar(
                  indicatorColor: Color(0xFF442F90),
                  tabs: [
                    Tab(
                      child: Text(
                        "Riwayat",
                        style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Proses",
                        style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                  controller: controller.controller,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                child: Card(
                  elevation: 2,
                  borderOnForeground: true,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          child: Image.asset(
                            "assets/images/tari.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tari Kecak (Dasar 1)",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              "Sasi Kirana Academy",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "17 Nov 18:47",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                child: Card(
                  elevation: 2,
                  borderOnForeground: true,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          child: Image.asset(
                            "assets/images/saman.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tari Saman (Menegah)",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              "Sasi Kirana Academy",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "28 Nov 10:12",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                child: Card(
                  elevation: 2,
                  borderOnForeground: true,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          child: Image.asset(
                            "assets/images/taro.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tari Piring (Dasar 1)",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Text(
                              "Sasi Kirana Academy",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Text(
                              "14 Nov 12:43",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
