import 'package:testdart/testdart.dart' as testdart;

void main() {
  var command = 'CLOSE';
  switch (command) {
    case 'CLOSE':
      print('Aplikasi ditutup.');
      break;
    case 'OPEN':
      print('Aplikasi dibuka.');
      break;
    case 'DELETE':
      print('Aplikasi dihapus.');
      break;
    default:
      print('Perintah tidak dikenali.');
  }
}
