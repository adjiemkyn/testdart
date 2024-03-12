import 'package:testdart/testdart.dart' as testdart;

void main() {
  sapa('Alice'); // Output: Halo, Alice!
  sapa('Bob', 'Selamat datang'); // Output: Selamat datang, Bob!
}

void sapa(String nama, [String salam = 'Halo']) {
  print('$salam, $nama!');
}
