import 'dart:collection';

void main() {
  Queue<String> antrean = Queue<String>();
  antrean.addAll(["Budi", "Ani", "Citra"]);

  print("Daftar antrean awal");
  print(antrean);

  /*b.*/
  antrean.add("Dewi");
  antrean.addFirst("Eko");

  /*d.*/
  antrean.addAll(['7', '0', '7', '0', '1', '2', '4', '0', '0', '0', '0', '7']);
  print("\nAntrean setelah penambahan data");
  print(antrean);
}

//a. Kode diatas berisi variabel antrean yang bertipe Queue (antrian) dan berisi beberapa elemen string. Queue adalah struktur data yang mengikuti prinsip FIFO (First In First Out) atau yang pertama masuk adalah yang pertama keluar.
//Dalam kode tersebut terdapat beberapa method seperti addAll() yang berfungsi untuk menambahkan beberapa elemen sekaligus ke dalam antrean.
//Kode tersebut akan mencetak isi dari variabel antrean awal.
//c. Kode diatas menambahkan dua elemen baru ke dalam antrean menggunakan method add() dan addFirst(). Method add() berfungsi untuk menambahkan elemen di akhir antrean, sedangkan addFirst() berfungsi untuk menambahkan elemen di awal antrean.
//Konsep FIFO (First In First Out) merupakan prinsip dasar dari struktur data Queue, dimana elemen yang pertama kali ditambahkan ke dalam antrean akan menjadi elemen pertama yang keluar saat proses pengambilan elemen dilakukan. Dengan menambahkan elemen di awal antrean menggunakan addFirst(), maka elemen tersebut akan menjadi elemen pertama yang keluar saat proses pengambilan elemen dilakukan.
