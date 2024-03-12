import 'package:testdart/testdart.dart' as testdart;

void main() {
  var number = 100;
  bool isInteger = number is int; // true
  bool isNotInteger = number is! int; // false
  (dynamic number as int).isEven;//Menggunakan 'as' untuk meng-cast dynamic ke int.
}
