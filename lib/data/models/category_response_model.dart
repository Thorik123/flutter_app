import 'dart:convert';

class CategoriesResponseModel {
  List<Category>? data;

  CategoriesResponseModel({
    this.data,
  });

  factory CategoriesResponseModel.fromJson(String str) =>
      CategoriesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoriesResponseModel.fromMap(Map<String, dynamic> json) =>
      CategoriesResponseModel(
        data: json["data"] == null
            ? []
            : List<Category>.from(
                json["data"]!.map((x) => Category.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Category {
  int? id;
  String? name;
  String? description;

  Category({
    this.id,
    this.name,
    this.description,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
      };
}
