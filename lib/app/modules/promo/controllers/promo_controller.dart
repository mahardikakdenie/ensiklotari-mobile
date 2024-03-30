import 'dart:convert';

import 'package:get/get.dart';

import '../../../data/Service/network_handler.dart';
import '../../../data/models/studio_model.dart';

class PromoController extends GetxController {
  List<StudioModel> allStudio = [];
  // List<Gallery> allGalery = [];
  Future<List<StudioModel>> getAllStudio() async {
    var response = await NetworkHandler.get(
      "api/products",
    );

    List? data =
        (json.decode(response) as Map<String, dynamic>)["data"]["data"];

    if (data == null || data.isEmpty) {
      return [];
    } else {
      allStudio = data.map((e) => StudioModel.fromJson(e)).toList();

      print(allStudio);
      return allStudio;
    }
  }
}
