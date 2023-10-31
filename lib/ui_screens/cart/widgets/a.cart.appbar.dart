part of '../_index.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({Key? key}) : super(key: key);

  CartCtrl get ct => Ctrl.cart;
  CartData get dt => Data.cart.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
