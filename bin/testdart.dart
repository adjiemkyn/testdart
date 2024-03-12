import 'package:testdart/testdart.dart' as testdart;

void main() {
  lakukanOperasi(5, 3, (x, y) => x + y); // Output: Hasil operasi: 8
}

void lakukanOperasi(int a, int b, Function operasi) {
  var hasil = operasi(a, b);
  print('Hasil operasi: $hasil');
}
