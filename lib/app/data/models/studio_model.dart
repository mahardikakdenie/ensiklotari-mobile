// To parse this JSON data, do
//
//     final studioModel = studioModelFromJson(jsonString);

import 'dart:convert';

StudioModel studioModelFromJson(String str) =>
    StudioModel.fromJson(json.decode(str));

String studioModelToJson(StudioModel data) => json.encode(data.toJson());

class StudioModel {
  StudioModel({
    this.id,
    this.name,
    this.price,
    this.description,
    this.tags,
    this.categoriesId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.galleries,
  });

  int? id;
  String? name;
  String? price;
  String? description;
  dynamic tags;
  String? categoriesId;
  dynamic deletedAt;
  dynamic createdAt;
  dynamic updatedAt;
  Category? category;
  List<Gallery>? galleries;

  factory StudioModel.fromJson(Map<String, dynamic> json) => StudioModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        tags: json["tags"],
        categoriesId: json["categories_id"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        category: Category.fromJson(json["category"]),
        galleries: List<Gallery>.from(
            json["galleries"].map((x) => Gallery.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "tags": tags,
        "categories_id": categoriesId,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "category": category?.toJson(),
        "galleries": List<dynamic>.from(galleries!.map((x) => x.toJson())),
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  dynamic deletedAt;
  dynamic createdAt;
  dynamic updatedAt;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Gallery {
  Gallery({
    this.id,
    this.productsId,
    this.url,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? productsId;
  String? url;
  dynamic deletedAt;
  dynamic createdAt;
  dynamic updatedAt;

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        id: json["id"],
        productsId: json["products_id"],
        url: json["url"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "products_id": productsId,
        "url": url,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
