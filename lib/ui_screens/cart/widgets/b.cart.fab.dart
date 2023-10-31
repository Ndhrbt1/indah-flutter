part of '../_index.dart';

class CartFab extends StatelessWidget {
  const CartFab({Key? key}) : super(key: key);

  CartCtrl get ct => Ctrl.cart;
  CartData get dt => Data.cart.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
