import 'package:zcommerce/model/data_types/review.dart';

class Product {
  final String name;
  final String brand;
  final List<String> similarProductFromBrand;
  final List<String> imagesUrl;
  final double rating;
  final String shortDescription;
  final String detailedDescription;
  final List<Review>? reviews;

  Product({
    required this.name,
    required this.brand,
    required this.similarProductFromBrand,
    required this.imagesUrl,
    required this.rating,
    required this.shortDescription,
    required this.detailedDescription,
    this.reviews,
  });
}
