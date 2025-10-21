class Mobil {
  String merk;
  String warna;
  int kecepatan;

  Mobil(this.merk, this.warna, this.kecepatan);

  void jalan() {
    print("Mobil $merk melaju dengan kecepatan $kecepatan km/jam");
  }

  //a. Method ubah kecepatan
  void ubahKecepatan(int nilai) {
    if (nilai > 0 ) {
      kecepatan = nilai;
      print("Kecepatan diubah menjadi $kecepatan km/jam");
    } else {
      print("Error\t: Kecepatan tidak boleh negatif!");
    }
  }

  //b. Method berhenti
  void berhenti() {
    kecepatan = 0;
    print("Mobil $merk berhenti.");
  }
}

//c. Uji Program((
void main() {
  Mobil mobil1 = Mobil("Toyota", "Merah", 60);
  Mobil mobil2 = Mobil("Honda", "Hita", 80);

  mobil1.jalan();
  mobil1.ubahKecepatan(100);
  mobil1.jalan();
  mobil1.ubahKecepatan(-80);
  mobil1.berhenti();

  print("");

  mobil2.jalan();
  mobil2.ubahKecepatan(0);
  mobil2.berhenti();
}