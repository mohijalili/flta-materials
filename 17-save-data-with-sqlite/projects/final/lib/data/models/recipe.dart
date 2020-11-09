import 'package:equatable/equatable.dart';

import 'ingredient.dart';

class Recipe extends Equatable {
  int id;
  final String label;
  final String image;
  final String url;
  List<Ingredient> ingredients;
  final double calories;
  final double totalWeight;
  final double totalTime;

  Recipe({this.id, this.label, this.image, this.url, this.calories, this.totalWeight, this.totalTime});

  @override
  List<Object> get props => [label, image, url, calories, totalWeight, totalTime];
  // Create a Recipe from JSON data
  factory Recipe.fromJson(Map<String, dynamic> json) => new Recipe(
    id: json["_id"],
    label: json["label"],
    image: json["image"],
    url: json["url"],
  );

  // Convert our Note to JSON to make it easier when we store it in the database
  Map<String, dynamic> toJson() => {
    "_id": id,
    "label": label,
    "image": image,
    "url": url,
  };
}
