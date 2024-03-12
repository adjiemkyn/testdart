import 'package:testdart/testdart.dart' as testdart;

class Mobil {
  String merk;
  int tahunProduksi;
// Konstruktor dengan null safety
  Mobil(this.merk, this.tahunProduksi);
}

class Akun {
  String? namaPengguna; // Bisa bernilai null
  String email; // Tidak boleh bernilai nul
  Akun(this.email, {this.namaPengguna});
}

class Kalkulator {
  int tambah(int a, int b) {
    return a + b;
  }

  int? bagi(int a, int b) {
    if (b == 0) return null; // Dapat mengembalikan null
    return a ~/ b;
  }
}

void main() {
  var mobilSaya = Mobil('Toyota', 2021);
  print('Merk Mobil: ${mobilSaya.merk}, Tahun: ${mobilSaya.tahunProduksi}');
  var akunSaya = Akun('example@example.com');
  print(
      'Email: ${akunSaya.email}, Nama Pengguna: ${akunSaya.namaPengguna ?? 'tidak diketahui'}');
  var kalkulator = Kalkulator();
  print('Hasil tambah: ${kalkulator.tambah(10, 5)}');
  var hasilBagi = kalkulator.bagi(10, 0);
  print('Hasil bagi: ${hasilBagi ?? 'Operasi tidak valid'}');
}
