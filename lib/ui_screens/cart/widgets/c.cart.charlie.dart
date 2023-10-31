part of '../_index.dart';

class CartCharlie extends StatelessWidget {
  const CartCharlie({Key? key}) : super(key: key);

  CartCtrl get ct => Ctrl.cart;
  CartData get dt => Data.cart.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
