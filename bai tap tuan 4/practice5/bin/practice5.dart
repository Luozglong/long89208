import 'package:practice5/practice5.dart' as practice5;


import 'dart:io';
import 'dart:typed_data';
void main() {
  int ixit=0;
  while(ixit == 0) {
    int i=0;
    String str = stdin.readLineSync() ?? '';
    File file = File('D:/New folder/hello.txt');
    if (str =='bai 1') {

      // write to file
      file.writeAsStringSync('Welcome to hello.txt file.');
      print('File written.');

      // get file location
      print('File path: ${file.path}');
      // get absolute path
      print('File absolute path: ${file.absolute.path}');
      // get file size
      print('File size: ${file.lengthSync()} bytes');
      // get last modified time
      print('Last modified: ${file.lastModifiedSync()}');
    }else if(str == 'bai 2'){
      print("fiend name ?");
      String fiendname = stdin.readLineSync() ?? '';


      file.writeAsStringSync(' ${fiendname}', mode: FileMode.append);
      String contents = file.readAsStringSync();
      // print file
      print(contents);
    }else if(str == 'bai 3'){
      print('File path: ${file.path}');
    }else if(str == 'bai 4'){
      File file2 = File('D:/New folder/hello_copy.txt');
      String contents = file.readAsStringSync();
      file2.writeAsStringSync(' ${contents}', mode: FileMode.append);
      String contents2 = file2.readAsStringSync();
      print(contents2);
    }else if(str == 'bai 5'){


      for(i=0;i<100 ; i++){
        File file = File('D:/New folder/hello${i}.txt');
        file.writeAsStringSync('add ${i}');
      }
    }else if(str == 'bai 6'){

      for(i=0;i<100 ; i++){

        File file = File('D:/New folder/hello${i}.txt');
        file.deleteSync();
      }
    }else if(str == 'bai 7') {
      File file = File('D:/New folder/hellocsv.csv');
      print("number of people");
      int n=int.parse( stdin.readLineSync() ?? '');
      file.writeAsStringSync(' 0 name phone ');

      for (i = 1; i <= n; i++) {
        print("name of number $i");
        String name = stdin.readLineSync() ?? '';
        print("phone of number $i");
        String phone = stdin.readLineSync() ?? '';
        file.writeAsStringSync('${i} ${name} ${phone}', mode: FileMode.append);
        String contents = file.readAsStringSync();
        print(contents);
      }

    }
  }
}
