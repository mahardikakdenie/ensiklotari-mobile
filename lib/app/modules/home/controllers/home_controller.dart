import 'package:ensiklotari/app/data/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // List<StudioModel> allStudio = [];
  // // List<Gallery> allGalery = [];
  // Future<List<StudioModel>> getAllStudio() async {
  //   var response = await NetworkHandler.get(
  //     "/api/products",
  //   );

  //   List? data = (json.decode(response))["data"]["data"];

  //   if (data == null || data.isEmpty) {
  //     return [];
  //   } else {
  //     allStudio = data.map((e) => StudioModel.fromJson(e)).toList();

  //     print(allStudio);
  //     return allStudio;
  //   }

  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map(
          (e) => Container(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: ElevatedButton(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Color(0xffF8F8F8),
                        child: Image.asset(
                          e.image,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(e.title, style: const TextStyle(fontSize: 14)),
                  ],
                ),
                style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Colors.white : Colors.black38),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        e.id == 1 ? Color(0xFF442F90) : Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                onPressed: () {}),
          ),
        )
        .toList();
  }
}
