void main() {
  print("\n******** PROGRAM DENGAN EXCEPTION HANDLING ********\n");

  try {
    int hasil = 9~/0;
    // b. Kode setelah diubah agar tidak menyebabkan exception
    // int hasil = 9~/3;
    print("Hasil pembagian = $hasil");
    print("Pernyataan dalam blok try setelah bebas dari exception");
  } catch (e) {
    print("Exception tertangkap: $e");
    print("Exception terjadi karena pembagian dengan nol");
  } 
  print("Pernyataan diluar blok try-catch");
}