part of '../_index.dart';

class ProductDetailFab extends StatelessWidget {
  const ProductDetailFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add_shopping_cart),
      onPressed: () => _ct.addToCart(),
    );
  }
}
