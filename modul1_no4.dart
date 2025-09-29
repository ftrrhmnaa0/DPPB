import 'dart:io';

const int MOD = 1000000007;

void main() {
  print("Masukkan basis B:");
  int B = int.parse(stdin.readLineSync()!);

  print("Masukkan string Y:");
  String Y = stdin.readLineSync()!;

  print("Hasilnya adalah:");
  print(solve(B, Y));
}

int solve(int B, String Y) {
  int n = Y.length;
  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1;

  for (int i = 0; i < n; i++) {
    if (dp[i] == 0) continue;

    for (int len = 1; len <= 6 && i + len <= n; len++) {
      String sub = Y.substring(i, i + len);

      if (sub.length > 1 && sub[0] == '0') break;

      int digit = int.parse(sub);
      if (digit < B) {
        dp[i + len] = (dp[i + len] + dp[i]) % MOD;
      } else {
        break;
      }
    }
  }

  return dp[n];
}
