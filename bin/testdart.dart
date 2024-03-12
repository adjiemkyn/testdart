import 'package:testdart/testdart.dart' as testdart;

class ContohKelas {
  static const String konstantaKelas = 'Nilai konstan';
  static void metodeStatis() {
    print('Ini adalah metode statis');
  }
}

void main() {
// Mengakses properti statis tanpa membuat instansi dari kelas
  print(ContohKelas.konstantaKelas); // Output: Nilai konstan
// Memanggil metode statis
  ContohKelas.metodeStatis(); // Output: Ini adalah metode statis
}
