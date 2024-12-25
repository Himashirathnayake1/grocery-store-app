import 'package:flutter/material.dart';
import '../models.dart';

class CartProvider with ChangeNotifier {
  final List<GroceryItem> _cartItems = [];

  List<GroceryItem> get cartItems => _cartItems;

  double get totalPrice =>
      _cartItems.fold(0, (sum, item) => sum + item.price);

  void addItem(GroceryItem item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItem(GroceryItem item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
