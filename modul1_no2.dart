import 'dart:io';


void main() {
  int go(int n) {
    int s = 0;
    int f = 1;

    for (int i = 2; i <= n; i++) {
      if (n % i == 0) {
        if (i - f > s) {
          s = i - f;
        }
        f = i;
      }
    }

    return s;
  }

  int result = go(30);
  print('go(30) = $result');
}

//Jawaban no2 (Fungsi go())
// Kode diatas untuk mencari selisih maksimum antara faktor pembagi berurutan dari sebuah bilangan (n).
// 2a. Kembalian dari pemanggilan go(30) adalah 15.
// 2b. Benar