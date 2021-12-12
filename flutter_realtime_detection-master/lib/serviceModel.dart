// To parse this JSON data, do
//
//     final detection = detectionFromJson(jsonString);

import 'dart:convert';

Detection detectionFromJson(String str) => Detection.fromJson(json.decode(str));

String detectionToJson(Detection data) => json.encode(data.toJson());

class Detection {
  Detection({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int count;
  dynamic next;
  dynamic previous;
  List<Result> results;

  factory Detection.fromJson(Map<String, dynamic> json) => Detection(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.title,
    this.price,
    this.discountPrice,
    this.category,
    this.label,
    this.slug,
    this.description,
    this.image,
  });

  String title;
  int price;
  dynamic discountPrice;
  String category;
  String label;
  String slug;
  String description;
  String image;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    title: json["title"],
    price: json["price"],
    discountPrice: json["discount_price"],
    category: json["category"],
    label: json["label"],
    slug: json["slug"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "price": price,
    "discount_price": discountPrice,
    "category": category,
    "label": label,
    "slug": slug,
    "description": description,
    "image": image,
  };
}
