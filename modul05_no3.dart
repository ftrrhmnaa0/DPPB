void main() {
  print("\n******** MENGGUNAKAN BLOK TRY-CATCH-FINALLY ********\n");

  try {
    int hasil = 9~/0;
    print("Hasil pembagian = $hasil");
    print("Pernyataan dalam blok try setelah bebas dari exception.");
  } catch (e) {
    print("Exception tertangkap: $e");
    print("Terjadi karena pembagian dengan nol.");
  } finally {
    print("\nPernyataan dalam blok finally.");
  }
  print("Pernyataan diluar blok try-catch-finally.");
}