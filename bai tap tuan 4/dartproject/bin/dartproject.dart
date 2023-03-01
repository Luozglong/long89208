import 'dart:io';
import 'dart:typed_data';

import 'package:dartproject/dartproject.dart' as dartproject;

void main(List<String> arguments) {
  int end =0;
  while(end==0) {
    String str= stdin.readLineSync() ?? '';
    if(str== "bai 1") {
      List<String> a = ["1", "2", "3", "4"];
      String b = stdin.readByteSync() as String;
      a.add(b);

      int i = 0;
      int bc= a.length;
      for (i = 0; i < bc; i++) {
        print('Hello world: ${a[i]}!');
      }
    }else if(str == "bai 2"){
      List<String> a = ["apple", "banana", "orange", "melon"];


      int b = a.length  ;
      for(int i =0 ; i<b ; i++) {
        print(a[i]);
      }
    }else if(str== "bai 3"){
      List<int> a =[1];
      int i;
      print(' nhap so luong ');
      int n= int.parse(stdin.readLineSync() ?? "");
      for(i=0;i<=n;i++) {
        print(' nhap  ');
        int value = int.parse(stdin.readLineSync() ?? "");
        a.add(value);
      }
      int s =0;
      for(i = 0 ; i< a.length ;i ++){
        s=s+a[i];
      }
      print('tong = $s');
    }else if(str == 'bai 4') {
      List<String> a = [];
      int i;

      print(' nhap  ');
      String value = stdin.readLineSync() ?? "" as String;
      a.add(value);
      int s = 0;
      for (i = 0; i < a.length; i ++) {
        print(' $a ');
      }
    }else if(str == 'bai 5') {
      List<String> a = ["apple", "banana", "orange", "melon"];
      Iterable<String> b = a.where((String)=>String.startsWith('a'));
      print(b);
    }else if(str == 'bai 6'){
      Map<String, String > person1 = {
        'name' : 'john',
        'address': '150, 230 street , london',
        'age': '22',
        'country':'englist'
      };
      person1['country'] = stdin.readLineSync() ?? '';
      print("All keys of Map: ${person1.keys}");
      print("All values of Map: ${person1.values}");
    }else if(str == 'bai 7'){
      Map<String, String > phonenumber = {
        'ahhh':'0123',
        'ahhhh':'3456',
        'Ahhhhh':'5677',
        'AHHHHHH':'5689'
      };
      int a=phonenumber.length;
      print("all keys > 4");
      for(MapEntry phonenumber in phonenumber.entries){
        if(phonenumber.key.toString().length >=4){
          print(phonenumber.key);
        }
      }

    }else if(str == 'bai 8'){
      int exit = 0;
      List<String> todo = [];
      while(exit == 0) {
        print("do you want to add, remove or view ");
        String s = stdin.readLineSync() ?? '';
        if(s=='add'){
          print('you want to add');
          String sd = stdin.readLineSync() ?? '';
          todo.add(sd);
        }else if(s == 'remove'){
          print('you want to remove');
          String sd = stdin.readLineSync() ?? '';
          todo.remove(sd);
        }else if(s=="view"){
          print(todo);
        }else if(s== 'exit'){
          break;
        }else{
          print("command unknown");
        }

      }

    }
  }
}
