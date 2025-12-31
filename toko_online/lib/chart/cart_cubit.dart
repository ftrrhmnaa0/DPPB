import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(const CartState());

  // Menambahkan produk ke dalam keranjang
  void addToCart(Product product) {
    final updatedItems = List<Product>.from(state.items)..add(product);
    emit(state.copyWith(items: updatedItems));
  }

  // Menghapus produk berdasarkan index
  void removeAt(int index) {
    if (index >= 0 && index < state.items.length) {
      final updatedItems = List<Product>.from(state.items)..removeAt(index);
      emit(state.copyWith(items: updatedItems));
    }
  }

  // Mengosongkan seluruh isi keranjang
  void clearCart() {
    emit(const CartState(items: []));
  }

  void reset() {}
}