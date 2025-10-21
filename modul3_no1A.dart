class Mahasiswa {
  String? nama;
  int? nim;
  String? jurusan;

  void tampilkanData() {
    print("Nama\t: $nama");
    print("NIM\t: $nim");
    print("Jurusan\t: $jurusan");
  }
}

void main() {
  var m1 = Mahasiswa();
  m1.nama = "Rusdi";
  m1.nim = 696969;
  m1.jurusan = "Tanah Abang";

  m1.tampilkanData();
}