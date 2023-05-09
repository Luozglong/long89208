import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'buttonlist.dart';
import 'product.dart';
import 'buttonandtext.dart';
class body extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'adfa',
      home: buttonlist3(),

    );
  }
}

class buttonlist3 extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return

      Padding(
      padding: EdgeInsets.symmetric(),

      child: Column(

      children: <Widget>[

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget> [

       Text(
           "all category",
         style: TextStyle(
           color: Colors.black,
           fontSize: 18.0,
           fontWeight: FontWeight.bold,
           letterSpacing: 1.0,
           decoration: TextDecoration.none,
         ),
       ),

        IconButton(
          icon: SvgPicture.asset(
              "assets/icons/iconmonstr-search-thin.svg", color:Color(0xFF535353) ),
          iconSize: 30,

          onPressed: () {},
        ),
      ],
    ),

      Container(
        height:150,
        color: Colors.white12,
        child: Row(
          children:<Widget>[
            butonandtext(),

          ],
        ),
      ),

        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(),

                child: GridView.builder(
                  itemCount: product.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, crossAxisSpacing: 8, mainAxisSpacing: 4
                  ),
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,

                   itemBuilder:(context,index) => ItemCard(
                     products: product[index],
                     protypes: protype[index],
                     idd: index,
                ),
            )
        )

        )
    ]
      ),
    );
  }
}
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

Product proo(List<Product> product, Protype b, int ij){
  int m=0;
  Product c = product[0];
  for(int i = 0;i<product.length;i++){
    if(product[i].id == b.pass){
      c = product[i];
      if(m != ij){
        m=m+1;
      }else{
        return c;
      }
    }

  }
  return product[0];
}

class ItemCard extends StatelessWidget{
  final Product products;
  final Protype protypes;
  final int idd;
  const ItemCard({
    Key? key,
    required this.products,
    required this.protypes,
    required this.idd,
  }):super (key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children:<Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            Text(
              protypes.protext,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                  decoration: TextDecoration.none,
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                  "assets/icons/iconmonstr-arrow-31.svg", color:Color(0xFF535353) ),
              iconSize: 30,

              onPressed: () {},
            ),
          ],
        ),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(),

                child: GridView.builder(
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 4
                  ),
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,
                  itemBuilder:(context,index) => ItemCard2(
                    protypes2: protypes,
                    ppd: proo(product , protypes, index),
                    id2: index,
                  ),
                )

            )

        )


    ],
    ),
    ]
    );
  }
}
class ItemCard2 extends StatelessWidget{
  final Protype protypes2;
  final Product ppd;
  final int id2;
  const ItemCard2({
    Key? key,

    required this.protypes2,
    required this.ppd,
    required this.id2,
  }):super (key: key);

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: ppd.color,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(ppd.image),
            ),


            Text(
                "\$${ppd.price} ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  letterSpacing: 1,
                )
            ),
            Text(
                " ${ppd.title}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.0,
                  decoration: TextDecoration.none,
                  letterSpacing: 1,
                ),
            )

          ],
        ),


      ],
    );
  }
}