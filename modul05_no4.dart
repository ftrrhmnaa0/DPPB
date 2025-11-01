void main() {
  print("\n******** MENGGUNAKAN MULTIPLE CATCH ********\n");

  try {
    List<int> array = List.filled(9, 0);
    array[9] = 13;
    print("Elemen array ke-9 adalah ${array[9]}");
    print("Pernyataan dalam blok try setelah bebas dari exception.");
    // c. Kode setelah diubah agar tidak menyebabkan exception
    // array[8] = 13;
    // print("Elemen array ke-8 adalah ${array[8]}");
    // print("Pernyataan dalam blok try setelah bebas dari exception.");
    // d. Kode setelah diubah agar ArgumentError dijalankan
    // List<int> array = List.filled(-5, 0);
    // array[2] = 13;
    // print("Elemen array ke-2 adalah ${array[2]}");
    // print("Pernyataan dalam blok try setelah bebas dari exception.");
    // e. kode agar catch e dijalankan
    // int hasil = 10 ~/ 0; 
    // print(hasil);
  } on RangeError catch (e) {
    print("RangeError: Anda mengakses array diluar indeks yang dideklarasikan.");
    print("Detail error: $e");
  } on ArgumentError catch (e) {
    print("ArgumentError: Anda membuat array dengan ukuran yang  salah.");
    print("Detail error: $e");
  } catch (e) {
    print("Exception umum: ${e.runtimeType} -> $e");
  }
  print("\nPernyataan diluar blok try-catch.");
}