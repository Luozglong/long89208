import 'package:flutter/material.dart';

import 'body.dart';

class homescreen extends StatelessWidget{
@override
  Widget  build (BuildContext context){
return Scaffold(

  appBar: buildAppBar(),
  body: body(),
);
}


AppBar buildAppBar(){
  return AppBar(
  title: Text('app bar'),

  );
}

}