import 'package:testdart/testdart.dart' as testdart;

//Definisi Exception Khusus
class UserNotFoundException implements Exception {
  String cause;
  UserNotFoundException(this.cause);
}

class PaymentDeclinedException implements Exception {
  String cause;
  PaymentDeclinedException(this.cause);
}

//Melempar Exception
void processPayment(String userId, double amount) {
  if (userId.isEmpty) {
    throw UserNotFoundException('User ID tidak ditemukan.');
  }
  if (amount <= 0) {
    throw PaymentDeclinedException('Jumlah pembayaran tidak valid.');
  }
// Logika pembayaran...
  print('Pembayaran berhasil untuk user $userId sejumlah $amount');
}

void main() {
  try {
    processPayment('', 100.0);
  } on UserNotFoundException catch (e) {
    print('Kesalahan: ${e.cause}');
  } on PaymentDeclinedException catch (e) {
    print('Kesalahan: ${e.cause}');
  } catch (e) {
    print('Terjadi kesalahan yang tidak diketahui: $e');
  }
}
