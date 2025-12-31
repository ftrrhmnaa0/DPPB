import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sepatu',
      price: 250000,
      stock: 10,
      rating: 4.5,
      image: 'assets/images/sepatu.jpg',
    ),
    Item(
      name: 'Tas',
      price: 150000,
      stock: 8,
      rating: 4.2,
      image: 'assets/images/tas.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplikasi Belanja')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/item',
                arguments: item,
              );
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(item.image, fit: BoxFit.cover),
                  ),
                  Text(item.name),
                  Text('Rp ${item.price}'),
                  Text('⭐ ${item.rating}'),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Aziz - 707012400007',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
