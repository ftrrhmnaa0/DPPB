import 'dart:io';

class EmptyInputException implements Exception {
  final String message;
  EmptyInputException(this.message);

  @override
  String toString() => "EmptyInputException: $message";
}

class InvalidNumberException implements Exception {
  final String message;
  InvalidNumberException(this.message);

  @override
  String toString() => "InvalidNumberException: $message";
}

class FormatInputException implements Exception {
  final String message;
  FormatInputException(this.message);

  @override
  String toString() => "FormatInputException: $message";
}

void main() {
  print("=== Program Pengelolaan Data Film Pak Dara ===\n");

  try {
    stdout.write("Masukkan judul film: ");
    String? judul = stdin.readLineSync();
    if (judul == null || judul.trim().isEmpty) {
      throw EmptyInputException("Judul film tidak boleh kosong!");
    }

    stdout.write("Masukkan tahun rilis: ");
    String? tahunInput = stdin.readLineSync();
    if (tahunInput == null || tahunInput.trim().isEmpty) {
      throw EmptyInputException("Tahun rilis tidak boleh kosong!");
    }
    int tahun = int.parse(tahunInput);
    if (tahun < 1800 || tahun > DateTime.now().year) {
      throw InvalidNumberException("Tahun rilis tidak valid!");
    }

    stdout.write("Masukkan durasi film (menit): ");
    String? durasiInput = stdin.readLineSync();
    if (durasiInput == null || durasiInput.trim().isEmpty) {
      throw EmptyInputException("Durasi film tidak boleh kosong!");
    }
    int durasi = int.parse(durasiInput);
    if (durasi <= 0) {
      throw InvalidNumberException("Durasi harus lebih dari 0 menit!");
    }

    print("\n=== Data Film Berhasil Disimpan ===");
    print("Judul  : $judul");
    print("Tahun  : $tahun");
    print("Durasi : $durasi menit");
  }

  on FormatException catch (_) {
    print("\nTerjadi kesalahan format input! Harus berupa angka.");
  }

  on EmptyInputException catch (e) {
    print("\nKesalahan: $e");
  }

  on InvalidNumberException catch (e) {
    print("\nKesalahan: $e");
  }

  catch (e, s) {
    print("\nTerjadi kesalahan tidak terduga: $e");
    print("Detail stack trace:\n$s");
  }

  finally {
    print("\nProgram sudah selesai dijalankan. Terima kasih!");
  }
}
