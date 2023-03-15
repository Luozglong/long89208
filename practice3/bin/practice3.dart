import 'dart:io';
import 'dart:math';
import 'package:practice3/practice3.dart' as practice3;
import 'package:test/scaffolding.dart';
int pw(int a , int b){
  int c = 1;
  for(int i=1 ; i<=b;i++){
    c=c*a;
  }
  return c;
}
void main(List<String> arguments) {
  int i =0;
  while(i==0){
    print('nhap ten bai (vd :bai 1)');
    String str = stdin.readLineSync() ?? '';
    if(str == 'exit'){
      break;
    }else if(str == 'bai 1'){
      print('Luong Van Long');
    }else if(str == 'bai 2'){
      print('nhap n');
      int n = int.parse(stdin.readLineSync() ?? '');
      print('so chan trong khoang 0 - $n');
      for(i=0;i<=n;i++){
        if(i%2 == 0){
          print('$i');
        }
      }
    }else if(str == 'bai 3'){
      Random random = new Random();
      String as ='';

      for(i=0;i<8;i++) {
        int randomNumber = random.nextInt(10);
        as = as +'$i';
        stdout.write('$i');
      }
    }else if(str == 'bai 4'){
      print('nhap ban kinh hinh tron');
      int n = int.parse(stdin.readLineSync() ?? '');

      print('dien tich = ' + '${3.14*n*n}');
    }else if(str == 'bai 5'){
      print('nhap canh x ');
      int x = int.parse(stdin.readLineSync() ?? '');
      print('nhap canh x ');
      int y = int.parse(stdin.readLineSync() ?? '');
      print('canh z = ${sqrt( pow(x,2) - pow(y,2))} ');
    }else if(str == 'bai 6'){
      String a = stdin.readLineSync() ?? '' ;
      String b= '';
      for(int i=a.length;i>0;i--){
        b=b+a.substring(i-1,i);
      }
      print('${b}');
    }else if(str == 'bai 7'){
      print('nhap n');
      int n = int.parse(stdin.readLineSync() ?? '');
      print('nhap so mu n');
      int m = int.parse(stdin.readLineSync() ?? '');
      print('${pw(n,m)}');
    }
  }
}
