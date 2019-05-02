//imported for @required
import 'package:flutter/foundation.dart';
enum Category{
  all,
  accessories,
  clothing,
  home,
}

class Product {

  Product({
    @required this.id,
    @required this.name,
    @required this.desc,
    @required this.price,
    @required this.category,
    this.featured = false,
  });
  final int id;
  final String name;
  final String desc;
  final int price;
  final Category category;
  final bool featured;

  //get corresponding image name from assets folder
  //in this case the assets are being loaded from a package
  String get asset => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

}