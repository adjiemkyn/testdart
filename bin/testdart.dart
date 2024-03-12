import 'package:testdart/testdart.dart' as testdart;

void main() {
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      continue; // Lewati iterasi saat ini jika i adalah bilangan genap
    }
    print('Bilangan ganjil: $i');
  }
}
