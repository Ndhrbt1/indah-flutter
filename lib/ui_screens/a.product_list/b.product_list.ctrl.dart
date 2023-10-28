part of '_index.dart';

class ProductListCtrl {
  init() {
    logxx.i(ProductListCtrl, '...');
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  addToList(List<Product> moreProduct) {
    _sv.addToList(moreProduct);
  }

  refreshProducts() {
    _sv.refreshProducts();
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    // nav.to(Routes.productDetail);
  }

  deleteAllProducts() async {
    Fun.showOverlayLoading();
    await Future.delayed(400.milliseconds);
    nav.back();
    await _sv.deleteAllProductsState();
  }
}
