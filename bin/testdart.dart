import 'package:testdart/testdart.dart' as testdart;

void main() {
  try {
// Kode yang berpotensi menghasilkan exception karena tidak bisa membagi dengan 0
    var hasilBagi = 100 ~/ 0;
  } on IntegerDivisionByZeroException {
// Menangani pembagian dengan nol
    print('Tidak dapat membagi dengan nol.');
  } catch (e) {
// Menangani exception lainnya
    print('Terjadi kesalahan: $e');
  } finally {
// Blok kode ini akan selalu dijalankan
    print('Operasi selesai.');
  }
}
