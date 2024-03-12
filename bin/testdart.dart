import 'package:testdart/testdart.dart' as testdart;

class Kendaraan {
  String merk;
  Kendaraan(this.merk);
  void klakson() {
    print("Tin! Tin!");
  }
}

class Mobil extends Kendaraan {
  int tahunProduksi;
  Mobil(String merk, this.tahunProduksi) : super(merk);
  @override
  void klakson() {
    print("Tut! Tut!");
  }
}

void main() {
  var mobilSaya = Mobil("Toyota", 2020);
  mobilSaya.klakson(); // Output: Tut! Tut!
  print(mobilSaya.merk); // Output: Toyota
}
