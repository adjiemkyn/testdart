import 'package:testdart/testdart.dart' as testdart;

class Mobil {
  String merk;
  int tahunProduksi;
// Konstruktor
  Mobil(this.merk, this.tahunProduksi);
// Metode
  void klakson() {
    print('Tin! Tin!');
  }
}

void main() {
// Membuat objek dari kelas Mobil
  Mobil mobilSaya = Mobil('Daihatsu', 2022);
// Mengakses properti objek
  print(mobilSaya.merk); // Output: Daihatsu
  print(mobilSaya.tahunProduksi); // Output: 2022
// Memanggil metode pada objek
  mobilSaya.klakson(); // Output: Tin! Tin!
}
