import 'dart:io';

class LoginException implements Exception {
  final String message;
  LoginException(this.message);

  @override
  String toString() => "LoginException: $message";
}

bool isValidInput(String input) {
  final validPattern = RegExp(r'^[a-zA-Z0-9]+$');
  return validPattern.hasMatch(input);
}

void main() {
  const String correctUsername = "admin123";
  const String correctPassword = "pass2025";

  print("=== Sistem Login Pak Gunar ===\n");

  try {
    stdout.write("Masukkan Username: ");
    String? username = stdin.readLineSync();

    if (username == null || username.trim().isEmpty) {
      throw LoginException("Username tidak boleh kosong!");
    }
    if (!isValidInput(username)) {
      throw LoginException("Username mengandung karakter tidak valid!");
    }

    stdout.write("Masukkan Password: ");
    String? password = stdin.readLineSync();

    if (password == null || password.trim().isEmpty) {
      throw LoginException("Password tidak boleh kosong!");
    }
    if (!isValidInput(password)) {
      throw LoginException("Password mengandung karakter tidak valid!");
    }

    if (username != correctUsername || password != correctPassword) {
      throw LoginException("Login Failed, Username/Password Salah!");
    }

    print("\nLogin Berhasil! Selamat datang, $username!");

  } on LoginException catch (e) {
    print("\n$e");
  } catch (e, s) {
    print("\nTerjadi kesalahan tidak terduga: $e");
    print("Detail stack trace:\n$s");

  } finally {
    print("\nProgram telah selesai dijalankan. Terima kasih.");
  }
}
