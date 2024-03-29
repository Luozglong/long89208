import 'package:android_studio_file/constants.dart';
import 'package:flutter/material.dart';
import 'package:android_studio_file/screens/home/home_screen.dart';
// https://www.youtube.com/watch?v=XBKzpTz65Io&t=113s
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

