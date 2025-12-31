// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Nama: Aziz Faturrahman",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Text(
              "NIM: 707012400007",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 12),
            Text(
              "Jurusan: Sikc",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
