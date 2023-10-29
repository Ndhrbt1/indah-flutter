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
}
