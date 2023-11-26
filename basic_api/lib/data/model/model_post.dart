import 'dart:convert';
import 'dart:math';

class ProductsRequestModel {
  final String title;
  final int price;
  final String description;
  final int categoryId;
  final List<String> images;

  ProductsRequestModel({
    required this.title,
    required this.price,
    required this.description,
    required this.categoryId ,
    this.images = const ["https://placeimg.com/640/480/any"],
  });

  factory ProductsRequestModel.fromJson(String str) =>
      ProductsRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductsRequestModel.fromMap(Map<String, dynamic> json) =>
      ProductsRequestModel(
        title: json["title"],
        price: json["price"],
        description: json["description"],
        categoryId: json["categoryId"] ?? Random().nextInt(100),
        images: List<String>.from(json["images"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "price": price,
        "description": description,
        "categoryId": categoryId,
        "images": List<dynamic>.from(images.map((x) => x)),
      };
}
