import 'package:testdart/testdart.dart' as testdart;

class Kendaraan {
  String merk;
  Kendaraan(this.merk);
  void klakson() {
    print("Tin! Tin!");
  }
}

mixin GPS {
  void navigasi(String tujuan) {
    print("Navigasi ke $tujuan");
  }
}

class Kapal extends Kendaraan with GPS {
  Kapal(String merk) : super(merk);
}

void main() {
  var kapalSaya = Kapal("Titanic");
  kapalSaya.navigasi("Atlantik"); // Output: Navigasi ke Atlantik
}
