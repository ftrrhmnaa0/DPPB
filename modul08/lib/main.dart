// import 'package:flutter/material.dart';
// import 'hello_world.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HelloWorld(),
//     );
//   }
// }

// import 'package:modul08/hello_world.dart'; 
// import 'package:flutter/material.dart'; 
// import 'package:modul08/column_widget.dart'; 

// void main() { 
//   runApp(const MyApp()); 
// } 

// class MyApp extends StatelessWidget { 
//   const MyApp({Key? key}) : super(key: key); 
//   @override 
//   Widget build(BuildContext context) { 
//     return const MaterialApp( 
//       title: "Aplikasi Flutter Pertama", 
//       home: ColumnWidget(), 
//     ); 
//   } 
// }

// import 'package:modul08/hello_world.dart'; 
// import 'package:flutter/material.dart'; 
// import 'package:modul08/column_widget.dart'; 
// import 'package:modul08/row_widget.dart'; 

// void main() { 
//   runApp(const MyApp()); 
// } 

// class MyApp extends StatelessWidget { 
//   const MyApp({Key? key}) : super(key: key); 
//   @override 
//   Widget build(BuildContext context) { 
//     return const MaterialApp( 
//       title: "Aplikasi Flutter Pertama", 
//       home: RowWidget(), 
//     ); 
//   } 
// }

// import 'package:modul08/hello_world.dart'; 
// import 'package:flutter/material.dart'; 
// import 'package:modul08/column_widget.dart'; 
// import 'package:modul08/row_widget.dart'; 
// import 'package:modul08/ui/produk_form.dart';

// void main() { 
//   runApp(const MyApp()); 
// } 

// class MyApp extends StatelessWidget { 
//   const MyApp({Key? key}) : super(key: key); 
//   @override 
//   Widget build(BuildContext context) { 
//     return const MaterialApp( 
//       title: "Aplikasi Flutter Pertama", 
//       home: ProdukForm(), 
//     ); 
//   } 
// }

import 'package:modul08/hello_world.dart'; 
import 'package:flutter/material.dart'; 
import 'package:modul08/column_widget.dart'; 
import 'package:modul08/row_widget.dart'; 
import 'package:modul08/ui/produk_form.dart';
import 'package:modul08/ui/login_page.dart';

void main() { 
  runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key); 
  @override 
  Widget build(BuildContext context) { 
    return const MaterialApp( 
      title: "Aplikasi Flutter Pertama", 
      home: LoginPage(), 
    ); 
  } 
}