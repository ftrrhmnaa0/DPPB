import 'package:flutter/foundation.dart';

@immutable
class Product {
	final String name;
	final int price;

	const Product({required this.name, required this.price});
}

@immutable
class CartState {
	final List<Product> items;

	const CartState({this.items = const []});

	int get totalItems => items.length;

	int get totalPrice => items.fold<int>(0, (sum, p) => sum + p.price);

	CartState copyWith({List<Product>? items}) {
		return CartState(items: items ?? List<Product>.from(this.items));
	}
}

