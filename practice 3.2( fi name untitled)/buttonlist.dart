import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
///sua loi
class buttonlist extends StatefulWidget{
  @override
  _buttonlist2 createState()=> _buttonlist2();
}
class _buttonlist2 extends State<buttonlist>with TickerProviderStateMixin{
   late TabController _tabController;
   @override
   void initState() {
     super.initState();
     _tabController = TabController(length: 3, vsync: this);
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('TabBar Widget'),
         bottom: TabBar(
           controller: _tabController,
           tabs: const <Widget>[
             Tab(
               icon: Icon(Icons.cloud_outlined),
             ),
             Tab(
               icon: Icon(Icons.beach_access_sharp),
             ),
             Tab(
               icon: Icon(Icons.brightness_5_sharp),
             ),

           ],
         ),
       ),
       body: TabBarView(
         controller: _tabController,
         children: const <Widget>[
           Center(
             child: Text("It's cloudy here"),
           ),
           Center(
             child: Text("It's rainy here"),
           ),
           Center(
             child: Text("It's sunny here"),
           ),
         ],
       ),
     );
    }
}

