import 'dart:io';

void main() { 
  int panas(int x) { 
    if (x == 0) return 0; 
      return (x % 10) + panas(x ~/ 10); 
    } 

    int dingin(int x, int y) { 
      int air = 0; 
      while (panas(air) != x) { 
      air += y; 
    } 
    return air; 
  } 


  int dingin1 = dingin(10,7);
  print("Pemanggilan dingin(10,7) adalah $dingin1");
  int dingin2 = dingin(2,35);
  print("Pemanggilan dingin(2,35) adalah $dingin2"); 
}

//Jawaban no3 (Fungsi panas dan dingin)
// Kode diatas untuk menemukan kelipatan dari suatu bilangan (y) yang jumlah digitnya sesuai dengan target (x).
// 2a. Kembalian dari pemanggilan dingin(10,7) adalah 28.
// 2b. Kembalian dari pemanggilan dingin(2,35) adalah 10010