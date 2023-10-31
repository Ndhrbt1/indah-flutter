part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  deleteProduct() async {
    await _sv.deleteProduct(_dt.rxSelectedId.st);
    await _sv.removeById(_dt.rxSelectedId.st);
    Fun.showOverlayLoading();
    await Future.delayed(400.milliseconds);
    RM.navigate.back();
    RM.navigate.back();
  }

  addToCart() {
    Product product = Product(
      id: _dt.rxProductFuture.st!.id,
      name: _dt.rxProductFuture.st!.name,
      image: _dt.rxProductFuture.st!.image,
      createdAt: _dt.rxProductFuture.st!.createdAt,
      price: _dt.rxProductFuture.st!.price,
      quantity: _dt.rxProductFuture.st!.quantity,
    );
    _sv.addToCart(product);
    nav.back();
    logx.i('addtocart');
  }
}
