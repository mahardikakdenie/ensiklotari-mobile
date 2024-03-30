// import 'package:ensiklotari/app/data/models/studio_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() async {
//   Uri url = Uri.parse("https://api.ensiklotari.com/v1/all/studio?entities=img");
//   var res = await http.get(url);

//   List data = (json.decode(res.body) as Map<String, dynamic>)["data"];

//   // annas
//   print(data[1]);

//   // api ke object
//   Studio studio = Studio.fromJson(data[0]);
//   print(studio.);
//   // print(surahAnnas.number);
//   // print(surahAnnas.revelation?.id);
//   // print(surahAnnas.numberOfVerses);
//   // Uri urlAnnas =
//   //     Uri.parse("https://api.quran.sutanlab.id/surah/${surahAnnas.number}");
//   // var resAnnas = await http.get(urlAnnas);

// //   Map<String, dynamic> dataAnnas =
// //       (jsonDecode(resAnnas.body) as Map<String, dynamic>)["data"];
// //   // api ke object
// //   DetailSurah annas = DetailSurah.fromJson(dataAnnas);

// //   print(annas.verses![0].text!.arab);

// //   Uri url = Uri.parse("https://api.quran.sutanlab.id/surah/108/1");
// //   var res = await http.get(url);

// //   Map<String, dynamic> data = json.decode(res.body)["data"];
// //   Map<String, dynamic> dataToModel = {
// //     "number": data["number"],
// //     "meta": data["meta"],
// //     "text": data["text"],
// //     "translation": data["translation"],
// //     "audio": data["audio"],
// //     "tafsir": data["tafsir"],
// //   };

// //   //convert map to model
// //   Ayat ayat = Ayat.fromJson(dataToModel);

// //   print(ayat.tafsir?.id?.short);
// }
