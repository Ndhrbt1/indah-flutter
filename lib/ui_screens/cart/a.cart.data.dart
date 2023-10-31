part of '_index.dart';

class CartData {
  final rxTitle = 'Cart'.inj();

  final rxInt = 0.inj();
  final rxCartList = _pv.rxCartList;
  final rxProductFuture = _pv.rxProductFuture;
}
