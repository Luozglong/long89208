import 'dart:io';


import 'package:practice6_2/practice6_2.dart' as practice6_2;
import 'package:test/scaffolding.dart';
enum gender{male  ,female, other}
class  animal{
late int id = 1;
late String name = 'mamal';
late String color = 'yellow';

}
class cat extends  animal{
  late String gender = 'male';
  late int yearolds = 2;
  late String sound = 'lound';
}
class camera {
  late int id;
  late String brand;
  late String color;
  late String prize;
  int get getid{
    return id;
  }
  void set getid(int id){
    this.id = id;
  }

  String get getbrand{
    return brand;
  }
  void set getbrand(String brand){
    this.brand = brand;
  }

  String get getcolor{
    return color;
  }
  void set getcolor(String color){
    this.color = color ;
  }

  String get getprize{
    return prize;
  }
  void set getprize(String prize){
    this.prize = prize ;
  }

}
void main() {
  int end = 0;
  while (end == 0) {
    String str = stdin.readLineSync() ?? '';
    if (str == "1") {
      var g = gender.male;
      if (g == gender.male) {
        for (gender gen in gender.values) {
          print(gen);
        }
      }
    } else if (str == '2') {
      animal a = new animal();
      cat b = new cat();
      print(b.id);
      print(b.gender);
      print(b.name);
      print(b.sound);
      print(b.color);
      print(b.yearolds);
    } else if (str == '3') {
      camera c1 = new camera();
      camera c2 = new camera();
      camera c3 = new camera();

      List<camera> ca = List<camera>.empty(growable: true);

      ca.add(c1);
      ca.add(c2);
      ca.add(c3);

      for(int i= 0;i<3;i++){
        ca[i].id = int.parse(stdin.readLineSync() ?? '');
        ca[i].brand= stdin.readLineSync() ?? '';
        ca[i].color=    stdin.readLineSync() ?? '';
        ca[i].prize= stdin.readLineSync() ?? '';
      }
      for(int i= 0;i<3;i++){
        print(ca[i].id);
        print(ca[i].brand);
        print(ca[i].color);
        print(ca[i].prize);
      }
    }
  }
}
