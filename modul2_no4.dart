void main() {
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];

  print(list1);
  print(list2);
  print(list2.length);

  /*b.*/
  List<int?> list_1 = list1;
  list_1 = [2, 1, null];
  var list3 = [0, ...?list_1];
  /*d.*/
  var litNim = [7, 0, 7, 0, 1, 2, 4, 0, 0, 0, 0, 7];
  print(list3);
  print(litNim);
  print(list3.length);
}

//a. Kode diatas berisi variabel list1 dan list2 yang bertipe List (array). 
//List1 berisi 3 elemen yaitu 1, 2, dan 3.
//List2 berisi elemen 0 dan semua elemen dari list1 yang ditambahkan menggunakan spread operator (...).
//Kode tersebut akan mencetak isi dari list1, list2, dan panjang dari list2.
//c. Kode diatas tidak akan error, karena kode tersebut hanya membuat salinan kode a dan hanya mengubah tipe data pada variabel list_1 menjadi List<int?> yang berarti list_1 dapat berisi elemen bertipe int dan null.
//Kode tersebut juga menambahkan null-aware spread operator (...?) pada list3 untuk menghindari error jika list_1 bernilai null.