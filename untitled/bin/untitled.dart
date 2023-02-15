import 'package:untitled/untitled.dart' as untitled;
import 'dart:io';
void main() {
  print("nhap ten practice ");
  int ab = int.parse(stdin.readLineSync() ?? "");
  if (ab == 1) {
    int sd = 0;
    while (sd >= 0) {
      print("nhap ten bai tap");
      sd = int.parse(stdin.readLineSync() ?? "");
      if (sd == 1) {
        print("i'm long");
      } else if (sd == 2) {
        print("i'm long");
        print("\n im long");
      } else if (sd == 4) {
        int a = 7;
        int b = 2;
        int c = 3;

        print(a * b * c);
      } else if (sd == 5) {
        int a = int.parse(stdin.readLineSync() ?? "");
        print(a * a);
      } else if (sd == 6) {
        String str = stdin.readLineSync() ?? "";
        List<String> name = ['zxcv', 'asd', 'sda', 'wer'];
        name.add(str);
        name.forEach((name) => print(name));
      } else if (sd == 7) {
        int a = 5;
        int b = 2;
        print(a / b);
        print(a % b);
      } else if (sd == 8) {
        int a = 5;
        int b = 2;
        int temp;
        temp = a;
        a = b;
        b = temp;
        print(" swap ${a} + ${b}");

        int? d = int.parse(stdin.readLineSync()!);
        print(d);
      } else if (sd == 9) {
        String a = stdin.readLineSync() ?? "";
        a = a.replaceAll(' ', '');
        print(a);
      } else if (sd == 10) {
        String a = "1";
        int b = int.parse(a);
        print(b);
      } else if (sd == 11) {
        print("insert total bill");
        int a = int.parse(stdin.readLineSync() ?? "");
        print("insert number of people");
        int b = int.parse(stdin.readLineSync() ?? "");
        print("money = ${a / b}");
      } else {
        print("khong co");
      }
    }
    print("ket thuc");
  } else {
    int sd = 0;
    while (sd >= 0) {
      print("nhap ten bai tap");
      sd = int.parse(stdin.readLineSync() ?? "");
      if (sd == 1) {
        int a = int.parse(stdin.readLineSync() ?? "");
        if (a % 2 == 0) {
          print("so chan");
        } else {
          print("so le");
        }
      } else if (sd == 2) {
        String a = "a";
        String b = a.toUpperCase();
        if (b == a) {
          print("constant");
        } else {
          print("vowel");
        }
      } else if (sd == 3) {
        int a = int.parse(stdin.readLineSync() ?? "");
        if (a > 0) {
          print("so duong");
        } else if (a == 0) {
          print("so 0");
        } else {
          print("so am");
        }
      } else if (sd == 4) {
        int i = 0;
        while (i < 100) {
          print(" i'm long");
        }
      } else if (sd == 5) {
        String a = "hello world";
        String b = "";
        b = a.substring(10, 11);
        print(b);

        int n,
            i,
            sum = 0;

        print("Enter a positive integer: ");
        n = int.parse(stdin.readLineSync() ?? "");
        for (i = 1; i <= n; ++i) {
          sum += i;
        }

        print("Sum = $sum ");
      } else if (sd == 6) {
        int n,
            i,
            sum = 0;
        print("Enter a positive integer: ");
        n = int.parse(stdin.readLineSync() ?? "");
        for (i = 1; i <= 9; ++i) {
          print(" $n * $i = ${n * i}");
        }
      } else if (sd == 7) {
        int n = 1,
            i,
            sum = 0;

        for (n = 1; n <= 9; n++) {
          for (i = 1; i <= 9; ++i) {
            print(" $n * $i = ${n * i}");
          }
        }
      } else if (sd == 8) {
        int n, n2;
        String ope = "0";
        print("Enter a positive integer: ");
        n = int.parse(stdin.readLineSync() ?? "");
        n2 = int.parse(stdin.readLineSync() ?? "");
        print("Enter a operator integer: ");
        ope = stdin.readLineSync() ?? "";
        switch (ope) {
          case '+' :
            {
              print(" a + b = ${n + n2}  ");
              break;
            }
          case '-' :
            {
              print(" a - b = ${n - n2}  ");
              break;
            }
          case '/' :
            {
              print(" a / b = ${n / n2}  ");
              break;
            }
          case '*':
            {
              print(" a * b = ${n * n2}  ");
              break;
            }
          default :
            {
              print("khong thuc hien duoc");
              break;
            }
        }
      } else if (sd == 9) {
        for (int i = 0; i <= 100; i++) {
          if (i != 41) {
            print("$i");
          }
        }
      } else {
        print("ko co");
      }
    }
  }
}
