import 'package:flutter/material.dart';

final lowonganList = [
  {
    'posisi': 'Staff IT',
    'perusahaan': 'PT Maju Jaya',
    'lokasi': 'Soreang',
    'tipe': 'Full-time'
  },
  {
    'posisi': 'Admin Gudang',
    'perusahaan': 'CV Sumber Rejeki',
    'lokasi': 'Cileunyi',
    'tipe': 'Kontrak'
  }
];

class LowonganPage extends StatelessWidget {
  const LowonganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Lowongan Pekerjaan')),
      body: ListView.builder(
        itemCount: lowonganList.length,
        itemBuilder: (context, index) {
          final data = lowonganList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: const Icon(Icons.work, color: Colors.white),
              ),
              title: Text(data['posisi'] ?? 'Tidak Ada Data', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data['perusahaan'] ?? 'Tidak Ada Data'),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(data['lokasi'] ?? 'Tidak Ada Data'),
                      const SizedBox(width: 12),
                      Text(data['tipe'] ?? 'Tidak Ada Data'),
                    ],
                  ),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Lamaran dikirim')));
                },
                child: const Text('Lamar'),
              ),
            ),
          );
        },
      ),
    );
  }
}
