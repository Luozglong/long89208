import 'package:flutter/material.dart';
import 'package:android_studio_file/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import 'package:android_studio_file/constants.dart';

class Categories extends StatefulWidget{
@override
  _CategoriesState createState() => _CategoriesState();

}
class _CategoriesState extends State<Categories>{
  List<String> categories = ["hand bag" ,"jewellery", "foot wear", "dresses" ];
  int selectedIndex = 0;
  @override

  Widget build(BuildContext context){
    return Padding(
      padding :const EdgeInsets.symmetric( vertical: kDefaultPaddin),
      child : SizedBox(
      height: 25,

      child : ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),

      ),
    ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector (
      onTap:(){
        setState((){
             selectedIndex = index;
        });
      },

    child: Padding(
      padding:const EdgeInsets.symmetric( horizontal: kDefaultPaddin),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Text(

        categories[index],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: selectedIndex == index ? kTextColor :  kTextLightColor ,
              ),
        ),
        Container(
          margin: EdgeInsets.only(top: kDefaultPaddin/4),
          height: 2,
          width: 30,
          color: selectedIndex == index ? Colors.black : Colors.transparent,
        ),
       ],
     ),

    ),
    );
  }
}
