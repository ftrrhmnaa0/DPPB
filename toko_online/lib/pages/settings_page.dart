import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toko_online/chart/cart_cubit.dart';
import '../chart/cart_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text("Reset Counter"),
                content:
                    const Text("Apakah Anda yakin ingin reset counter?"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("BATAL"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<CartCubit>().reset();
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Counter berhasil direset"),
                        ),
                      );
                    },
                    child: const Text("YA"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Reset Counter"),
        ),
      ),
    );
  }
}
