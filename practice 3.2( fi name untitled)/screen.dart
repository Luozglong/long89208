import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'body.dart';

class screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      home:  buildnavibar(),
    );

  }
    AppBar buildAppbar (){
    return AppBar(
      title: Text('Sample'),
      backgroundColor: Colors.green,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/shopping-cart-thin.svg",color:Color(0xFF535353) ),
        onPressed:  (){} ,
      ),
      actions:<Widget> [
        IconButton(
            onPressed: (){} ,
            icon: SvgPicture.asset("assets/icons/iconmonstr-search-thin.svg",color:Color(0xFF535353 )),
        ),
        IconButton(
          onPressed: (){} ,
          icon: SvgPicture.asset("assets/icons/iconmonstr-bell-thin.svg",color:Color(0xFF535353 )),
        ),
      ],
    );

}

}

class buildnavibar extends StatefulWidget {


  @override
  State<buildnavibar> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<buildnavibar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppbar(),
      body:body(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'bag',

          ),

        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black ,
        onTap: _onItemTapped,
      ),
    );
  }
  AppBar buildAppbar (){
    return AppBar(
      title: Text('Sample'),
      backgroundColor: Colors.green,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/shopping-cart-thin.svg",color:Color(0xFF535353) ),
        onPressed:  (){} ,
      ),
      actions:<Widget> [
        IconButton(
          onPressed: (){} ,
          icon: SvgPicture.asset("assets/icons/iconmonstr-search-thin.svg",color:Color(0xFF535353 )),
        ),
        IconButton(
          onPressed: (){} ,
          icon: SvgPicture.asset("assets/icons/iconmonstr-bell-thin.svg",color:Color(0xFF535353 )),
        ),
      ],
    );

  }
}


