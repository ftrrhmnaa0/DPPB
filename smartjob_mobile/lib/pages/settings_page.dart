import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notifLowongan = true;
  bool darkMode = false;
  bool notifStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: Column(
              children: [
                SwitchListTile(
                  title: const Text('Notifikasi Lowongan Baru'),
                  value: notifLowongan,
                  onChanged: (value) {
                    setState(() {
                      notifLowongan = value;
                    });
                  },
                ),
                const Divider(height: 0),
                SwitchListTile(
                  title: const Text('Mode Gelap'),
                  value: darkMode,
                  onChanged: (value) {
                    setState(() {
                      darkMode = value;
                    });
                  },
                ),
                const Divider(height: 0),
                SwitchListTile(
                  title: const Text('Notifikasi Status Lamaran'),
                  value: notifStatus,
                  onChanged: (value) {
                    setState(() {
                      notifStatus = value;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('Tentang Aplikasi'),
            subtitle: const Text('SmartJob Mobile • versi 1.0'),
          ),
        ],
      ),
    );
  }
}
