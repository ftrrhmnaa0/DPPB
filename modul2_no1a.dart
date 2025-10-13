void main() {
  
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}

// a. kode diatas berisi variabel list yang berisi nilai array 1, 2, dan 3.
// Dalam kode tersebut terdapat assert yang berfungsi untuk memastikan bahwa panjang list adalah 3 dan nilai pada index ke 1 adalah 2.
// Setelah itu, kode mencetak panjang list dan nilai pada index ke 1.
// Kemudian, nilai pada index ke 1 diubah menjadi 1, dan assert memastikan bahwa perubahan tersebut berhasil.
// Lalu, kode mencetak nilai pada index ke 1 yang telah diubah.
