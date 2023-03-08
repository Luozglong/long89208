import 'package:practice6_1/practice6_1.dart' as practice6_1;
import 'dart:convert';
import 'dart:io';

class laptop{
  late String name;
  late int id;
  late int ram;

  String get lapname{
    return name;
  }
  void set lapname(String name ){
    this.name = name;
  }

  int get lapid{
    return id;
  }
  void set lapid(int id ){
    this.id = id;
  }

  int get lapram{
    return ram;
  }
  void set lapram(int ram ){
    this.ram = ram;
  }

}
class house{
  late String name;
  late int id;
  late int price;

  void entervalue(){
    print('name ?');
    this.name = stdin.readLineSync()  ?? '';
    print('id ?');
    this.id = int.parse(stdin.readLineSync()  ?? '');
    print('price ?');
    this.price = int.parse(stdin.readLineSync()  ?? '');

  }
  void printvalue(){
    print(this.name);
    print(this.id);
    print(this.price);
  }
  house(String name ,int id ,int price) {
    this.name = name;
    this.id = id;
    this.price = price;
  }
}
void main() {
  String sdd = stdin.readLineSync() ?? '';
  if(sdd == '1'){
    laptop s1 = new laptop();
    String str = 'asus';
    int id = 5;
    int ram = 200;

    s1.lapname = str;
    s1.lapid = id;
    s1.lapram = ram;

    print(s1.lapname);
    print(s1.lapid);
    print(s1.lapram);
  }else if(sdd== '2'){
    house s2 =new house('asd',2,2);
    house s3 = new house('asdfg',1,1);
    List<house> sc = List<house>.empty(growable: true);
    sc.add(s2);
    sc.add(s3);
    for(int i=0 ;i<=2;i++){
      sc[i].printvalue();
    }
  }
}
