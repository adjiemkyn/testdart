import 'package:testdart/testdart.dart' as testdart;

void main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break; // Keluar dari loop ketika i mencapai 5
    }
    print(i);
  }
}
