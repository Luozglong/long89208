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
List<Product> product = [
  Product(
    id:1,
    title: "office code 1",
    price: 1234,
    size: 8,
    description: dummyText,
    image:"assets/images/pngwing.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id:1,
    title: "office code 2",
    price: 2234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(1).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:1,
    title: "office code 3",
    price: 3234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(2).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:1,
    title: "office code 4",
    price: 4234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(3).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:2,
    title: "office code 5",
    price: 5234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(4).png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id:3,
    title: "office code 6",
    price: 6234,
    size: 8 ,
    description: dummyText,
    image:"assets/images/pngwing(4).png",
    color: Color(0xFFD3A984),
  ),
];

class Protype {
  final int pass ,id ;
  final String  protext ;
  Protype({
    required this.id,
    required this.pass,
    required this.protext,
});
}
List <Protype> protype=[
  Protype(
    id :1,
    pass :1,
    protext: "vegie1",
  ),
  Protype(
    id :2,
    pass :2,
    protext: "vegie2",
  ),
  Protype(
    id :3,
    pass :3,
    protext: "vegie3",
  ),
  Protype(
    id :4,
    pass :4,
    protext: "vegie4",
  ),
  Protype(
    id :5,
    pass :5,
    protext: "vegie5",
  ),
  Protype(
    id :6,
    pass :6,
    protext: "vegie6",
  ),
];