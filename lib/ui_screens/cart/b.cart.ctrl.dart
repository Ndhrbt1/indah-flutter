part of '_index.dart';

class CartCtrl {
  CartData get dt => Data.cart.st;

  init() => logxx.i(CartCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
