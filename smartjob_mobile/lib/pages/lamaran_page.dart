import 'package:flutter/material.dart';

final lamaranList = [
  {
    'posisi': 'Staff IT',
    'perusahaan': 'PT Maju Jaya',
    'status': 'Diproses',
    'tanggal': '12-11-2025 08:30'
  },
  {
    'posisi': 'Admin Gudang',
    'perusahaan': 'CV Sumber Rejeki',
    'status': 'Diterima',
    'tanggal': '15-11-2025 09:00'
  }
];

class LamaranPage extends StatelessWidget {
  const LamaranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Lamaran')),
      body: ListView.builder(
        itemCount: lamaranList.length,
        itemBuilder: (context, index) {
          final data = lamaranList[index];
          final status = (data['status'] ?? '').toString();
          Color chipColor = Colors.grey;
          if (status.toLowerCase().contains('diterima')) {
            chipColor = Colors.green;
          } else if (status.toLowerCase().contains('diproses')) {
            chipColor = Colors.amber;
          } else if (status.toLowerCase().contains('ditolak')) {
            chipColor = Colors.red;
          }

          Color labelColor;
          if (chipColor is MaterialColor) {
            labelColor = (chipColor as MaterialColor).shade700;
          } else {
            labelColor = chipColor;
          }

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              title: Text(data['posisi'] ?? 'Tidak Ada Data', style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Text('${data['perusahaan']} • ${data['tanggal']}'),
              trailing: Chip(
                label: Text(status),
                backgroundColor: chipColor.withOpacity(0.15),
                labelStyle: TextStyle(color: labelColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
