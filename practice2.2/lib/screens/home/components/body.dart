import 'package:android_studio_file/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import 'categorries.dart';
class Body extends StatelessWidget{


  @override
  Widget build(BuildContext context){

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin ),
          child: Text(
              "women",
            style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
          ),
          ),

          Categories(),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(

              itemCount: product.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       childAspectRatio: 0.75,
              ), itemBuilder:(context,index) => ItemCard(
                        products: product[index],

      ),

),

),
          ),

        ],

        );

  }
}

class ItemCard extends StatelessWidget{
final Product products;


const ItemCard({
Key? key,
required this.products,


}):super (key: key);

@override
Widget build(BuildContext context){
return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
        Expanded(

        child: Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(products.image),
        ),
        ),

        Padding(
           padding:const EdgeInsets.symmetric(vertical : kDefaultPaddin / 4  ),
        child: Text(
          products.title,
          style: TextStyle(color : kTextLightColor ),
          ),
        ),
             Text(
                 "\$${products.price}",
                   style: TextStyle(fontWeight: FontWeight.bold)
                  )
],
  );
}
}
