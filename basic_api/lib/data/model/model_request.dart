import 'dart:convert';

class ProductModel {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"] ?? 0,
        title: json["title"] ?? '',
        price: json["price"] ?? 0,
        description: json["description"] ?? '',
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
