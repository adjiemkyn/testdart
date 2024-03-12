import 'package:testdart/testdart.dart' as testdart;

void main() {
// Fungsi yang mengembalikan hasil penjumlahan dua bilangan.
  int tambah(int a, int b) {
    return a + b;
  }

// Fungsi yang mengembalikan teks berdasarkan kondisi.
  String kategorikanUmur(int umur) {
    if (umur < 18) {
      return 'Remaja';
    } else {
      return 'Dewasa';
    }
  }
}

// Fungsi yang mengembalikan nilai boolean.
bool apakahGenap(int angka) {
  return angka % 2 == 0;
}
