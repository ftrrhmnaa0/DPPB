import 'dart:io';
import 'dart:math';

void main() {
  var line1 = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int N = line1[0], M = line1[1], K = line1[2];

  var B = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  var G = stdin.readLineSync()!.split(' ').map(int.parse).toList();


  List<int> parent = List.generate(N, (i) => i);

  int find(int x) {
    if (parent[x] != x) parent[x] = find(parent[x]);
    return parent[x];
  }

  void unite(int a, int b) {
    int pa = find(a);
    int pb = find(b);
    if (pa != pb) parent[pb] = pa;
  }

  for (int i = 0; i < K; i++) {
    var p = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    unite(p[0] - 1, p[1] - 1);
  }

  Map<int, List<int>> grup = {};
  for (int i = 0; i < N; i++) {
    int root = find(i);
    grup.putIfAbsent(root, () => []).add(i);
  }

  int total = 0;
  for (var g in grup.values) {
    int minTidakPuas = 999999999;
    for (int gi in G) {
      int sum = 0;
      for (int i in g) {
        sum += (B[i] - gi).abs();
      }
      minTidakPuas = min(minTidakPuas, sum);
    }
    total += minTidakPuas;
  }

  print(total);
}
