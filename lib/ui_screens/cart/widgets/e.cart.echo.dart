part of '../_index.dart';

class CartEcho extends StatelessWidget {
  const CartEcho({Key? key}) : super(key: key);

  CartCtrl get ct => Ctrl.cart;
  CartData get dt => Data.cart.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
