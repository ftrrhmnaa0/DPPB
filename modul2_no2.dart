void main() {
  /*a*/
  var prodi = {
    'Sistem Informasi',
    'Teknologi Rekayasa Multimedia',
    'Sistem Informasi Kota Cerdas',
    'Sistem Informasi'
  };
  print(prodi);
  
  /*b*/
  Set<String> prodiSet = prodi;

  /*d*/
  prodiSet.add("Aziz Faturrahman Anwar");

  // Tambahkan beberapa elemen sekaligus menggunakan .addAll()
  prodiSet.addAll({"D4SIKC48-01", "707012400007"});

  print(prodiSet);
}

//Jawaban
//a. Kode diatas berisi variabel prodi yang bertipe Set dan berisi beberapa elemen string.
// dalam kode diatas akan mencetak isi dari variabel prodi, pada isi 'sistem informasi' hanya akan muncul satu kali karena Set tidak memperbolehkan duplikasi nilai.
//c. Kode diatas mengubah tipe data variabel prodi menjadi Set<String> yang berarti hanya menerima elemen bertipe String.
