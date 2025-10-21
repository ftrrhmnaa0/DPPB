class Mahasiswa {
  String nama;
  int nim;
  String jurusan;

  Mahasiswa(this.nama, this.nim, this.jurusan);

  void tampilkanData() {
    print("Nama\t: $nama");
    print("NIM\t: $nim");
    print("Jurusan\t: $jurusan");
  }
}

void main() {
  var m1 = Mahasiswa("Jauzi", 767676, "Pondok Gede");
  m1.tampilkanData();
}