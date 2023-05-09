import 'package:flutter/material.dart';
class butonandtext extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    return Row(
      children : <Widget>[

        Column(
            children:<Widget>[

              Padding(
                padding: const EdgeInsets.all(20.0),

                child: RawMaterialButton(
                  onPressed: (){},
                  shape: CircleBorder(),
                  fillColor: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.house,
                      size: 30.0,
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),


              Text(
                "house",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                    decoration: TextDecoration.none
                ),
              ),
            ]
        ),


        Column(
            children:<Widget>[

              Padding(
                padding: const EdgeInsets.all(20.0),

                child: RawMaterialButton(
                  onPressed: (){},
                  shape: CircleBorder(),
                  fillColor: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.local_grocery_store,
                      size: 30.0,
                      color: Colors.black12,

                    ),
                  ),
                ),
              ),


              Text(
                "local grocery store",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                    decoration: TextDecoration.none
                ),

              ),
            ]
        ),

        Column(
            children:<Widget>[

              Padding(
                padding: const EdgeInsets.all(20.0),

                child: RawMaterialButton(
                  onPressed: (){},
                  shape: CircleBorder(),
                  fillColor: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.liquor,
                      size: 30.0,
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),


              Text(
                "liquor",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                    decoration: TextDecoration.none
                ),
              ),
            ]
        ),

        Column(
            children:<Widget>[

              Padding(
                padding: const EdgeInsets.all(20.0),

                child: RawMaterialButton(
                  onPressed: (){},
                  shape: CircleBorder(),
                  fillColor: Colors.white,

                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.breakfast_dining,
                      size: 30.0,
                      color: Colors.black12,
                    ),
                  ),
                ),
              ),


              Text(
                "breakfast dining",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                    decoration: TextDecoration.none,
                ),
              ),
            ]
        ),


]
    );
  }

}
class categori extends StatefulWidget{
  @override
  _categoristate createState() => _categoristate();

}
const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);
const kDefaultPaddin = 20.0;

class _categoristate extends State<categori> {
  List<String> categories = ["hand bag", "jewellery", "foot wear", "dresses"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),

        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),

              child: RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                fillColor: Colors.white10,

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    Icons.message,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            Text(
              categories[index],
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),

            ),


          ],
        ),

      ),
    );
  }


}
