void main () {
    final list = [null, "Aziz Faturrahman Anwar", "707012400007", null];
    print(list);
}

// b. Dalam kode diatas terdapat variabel list dengan tipe data final yang artinya list tidak bisa diganti, tetapi isi (elemen) masih bisa diubah
// List berisi 4 elemen, dimana elemen pertama dan terakhir bernilai null, sedangkan elemen kedua dan ketiga berisi string.
// Kemudian kode mencetak isi dari list. Pada kode tersebut tidak terjadi error, karena karena final hanya mengunci referensi list, bukan isinya.