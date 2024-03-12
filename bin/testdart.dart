import 'package:testdart/testdart.dart' as testdart;

class Buku {
  String judul;
  String pengarang;
  bool dipinjam;
  Buku(this.judul, this.pengarang) : dipinjam = false;
  void pinjam() {
    if (dipinjam) {
      throw Exception('Buku sudah dipinjam!');
    }
    dipinjam = true;
  }

  void kembali() {
    dipinjam = false;
  }

  @override
  String toString() {
    return 'Buku: $judul oleh $pengarang';
  }
}

class Perpustakaan {
  List<Buku> katalog = [];
  void tambahBuku(Buku buku) {
    katalog.add(buku);
  }

  Buku? cariBuku(String judul) {
    for (var buku in katalog) {
      if (buku.judul.toLowerCase() == judul.toLowerCase()) {
        return buku;
      }
    }
    return null;
  }

  void pinjamBuku(String judul) {
    try {
      var buku = cariBuku(judul);
      buku?.pinjam();
      print('Buku "$judul" berhasil dipinjam.');
    } on Exception catch (e) {
      print(e);
    }
  }

  void kembalikanBuku(String judul) {
    var buku = cariBuku(judul);
    if (buku != null && buku.dipinjam) {
      buku.kembali();
      print('Buku "$judul" berhasil dikembalikan.');
    } else {
      print('Buku "$judul" tidak ditemukan atau belum dipinjam.');
    }
  }

  void tampilkanKatalog() {
    print('Katalog Perpustakaan:');
    for (var buku in katalog) {
      if (!buku.dipinjam) {
        print(buku);
      }
    }
  }
}

void main() {
  var perpustakaan = Perpustakaan();
  perpustakaan.tambahBuku(Buku('Dart Fundamentals', 'Dart Author'));
  perpustakaan.tambahBuku(Buku('Flutter Development', 'Flutter Author'));
  perpustakaan.pinjamBuku('Dart Fundamentals');
  perpustakaan.pinjamBuku('Dart Fundamentals'); // Ini akan melempar exception
  perpustakaan.kembalikanBuku('Dart Fundamentals');
  perpustakaan.tampilkanKatalog();
}
