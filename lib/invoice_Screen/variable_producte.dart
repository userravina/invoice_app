import 'dart:ffi';

class Product {
  final int id;
  final String title;
  final String description;
  final  price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnails;
  final String images;

  Product({
     this.id,
    this.title,
     this.description,
    this.price,
    this.discountPercentage,
     this.rating,
     this.stock,
     this.brand,
     this.category,
     this.thumbnails,
     this.images,
  });

}

List addCart = [];
