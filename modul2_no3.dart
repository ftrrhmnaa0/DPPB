void main() {
    var identitas = {
    'Nama' : "Aziz Faturrahman Anwar",
    'NIM' : 12143123,
    'Kelas' : 'A'
  };


  var kampus = {
    1: 'Sistem Infromasi Kota Cerdas',
    2: 'FIT',
    3: 'tel-U',
    'Kampus' : 1
  };
 
  print(identitas);
  print(kampus);

  /*b*/
  var mhs1 = Map<String, String>.from(
    identitas.map((key, value) => MapEntry(key, value.toString()))
  );

  mhs1['Nama'] = 'Joko Ododiw';
  mhs1['NIM'] = '707012400000';
  mhs1['Kota'] = 'Bandung';
  /*d.*/
mhs1['Asal Sekolah'] = 'SMA 9 Tambun ';

  var mhs2 = Map<dynamic, String>.from(
    kampus.map((key, value) => MapEntry(key, value.toString()))
  );
  mhs2[2] = 'Fakultas Ilmu Terapan';
  mhs2[10] = 'Telkom University';
  mhs2[18] = 'kampus utama';
  /*d.*/
  mhs2['Asal Kota Saudara'] = 'Bekasi';

  print(mhs1);
  print(mhs2);
}

//a. Kode diatas berisi variabel identitas dan kampus yang bertipe Map, karena terdaoat key dan value pada setiap elemen.
// Kode tersebut akan mencetak isi dari variabel identitas dan kampus.
//c.  Kode diatas tidak akan error, karena kode tersebut hanya membuat salinan kode a dan hanya mengubah tipe data pada variabel mhs1 dan mhs2 menjadi Map<String, String> dan Map<dynamic, String>.
