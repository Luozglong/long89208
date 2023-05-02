import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_folder/setinf/product.dart';
class body extends StatelessWidget{
  Widget build(BuildContext context){
    const String _title ="practice 2,2";
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }

}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.selected,
            destinations: [
              NavigationRailDestination(
                icon: Column(
                  children: [Icon(Icons.favorite_border), Text('Button 1')],
                ),
                selectedIcon: Container(
                  color: Colors.green,
                  child: Column(
                    children: [Icon(Icons.favorite_border), Text('Button 1')],
                  ),
                ),
                label: Text(""),
              ),
              NavigationRailDestination(
                icon: SvgPicture.asset("assets/icons/iconmonstr-search-thin.svg", color: Color(0xFF535353)) , //Column(children: [Icon(Icons.bookmark_border), Text('Button 2')],),
                selectedIcon: Column(
                  children: [Icon(Icons.book), Text('2 clicked')],
                ),
                label: Text(''),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Center(
              child: Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.builder(

                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ), itemBuilder:(context,index) => itemcard(
                    product: products[index],

                  ),

                  ),

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class itemcard extends StatelessWidget{
final Product product;
const itemcard({
  Key? key,
  required this.product,
}):super (key: key);
@override
  Widget build(BuildContext context){
         return Column(
crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget> [
             Expanded(
               child: Container(
                 padding: EdgeInsets.all(20.0),
                 height: 120,
                 width: 180,
                 decoration: BoxDecoration(
                   color: product.color,
                   borderRadius: BorderRadius.circular(16)
                 ),
                  child: Image.asset(product.image),
               ),

             ),
           Padding(
               padding: const EdgeInsets.symmetric(vertical: 20/5),
                   child: Text(
                     product.title,
                     style: TextStyle(color:  Color(0xFF535353)),
                   ),

           ),
             Text(
"\$${product.price}",
               style: TextStyle(fontWeight: FontWeight.bold) ,
             )

           ],

         );
}
}