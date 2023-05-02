import 'package:flutter/material.dart';
const String dummyText = "best bag";
class Product{
  final String image, title , description;
  final int price ,size ,id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}
List<Product> products = [
  Product(
    id:1,
    title: "office code",
    price: 234,
    size:12,
    description: dummyText,
    image:"assets/images/pngwing.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id:2,
    title: "office code",
    price: 234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(1).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:3,
    title: "office code",
    price: 234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing (2).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:4,
    title: "office code",
    price: 234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(3).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:5,
    title: "office code",
    price: 234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(4).png",
    color: Color(0xFFD3A984),
  ),
];