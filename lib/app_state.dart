import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CartItemTypeStruct> _cart = [];
  List<CartItemTypeStruct> get cart => _cart;
  set cart(List<CartItemTypeStruct> value) {
    _cart = value;
  }

  void addToCart(CartItemTypeStruct value) {
    _cart.add(value);
  }

  void removeFromCart(CartItemTypeStruct value) {
    _cart.remove(value);
  }

  void removeAtIndexFromCart(int index) {
    _cart.removeAt(index);
  }

  void updateCartAtIndex(
    int index,
    CartItemTypeStruct Function(CartItemTypeStruct) updateFn,
  ) {
    _cart[index] = updateFn(_cart[index]);
  }

  void insertAtIndexInCart(int index, CartItemTypeStruct value) {
    _cart.insert(index, value);
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }

  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int value) {
    _quantity = value;
  }
}
