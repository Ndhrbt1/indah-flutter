part of '_index.dart';

class ProductServ {
// * serv  read list

  initReadAllProducts() {
    _pv.rxProductList.refresh();
    readAllProducts();
  }

  readAllProducts() {
    _pv.rxLoadMore.stateAsync = _rp.readAllProducts();
  }

  addToList(List<Product> moreProduct) {
    _pv.rxProductList.st = [..._pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < _pv.limit) {
      // logx.s('tamat euy');
      _pv.rxIsEnd.st = true;
    }
  }

  refreshProducts() {
    _pv.rxIsEnd.st = false;
    _pv.rxProductList.st = [];
    readAllProducts();
  }

  setSelectedId(String id) {
    _pv.rxSelectedId.refresh();
    _pv.rxSelectedId.st = id;
  }

  // * serv read detail
  readProduct() {
    _pv.rxProductFuture.stateAsync = _rp.readProduct();
  }

  // * serv delete product detail

// delete firestore

  deleteProduct(String id) {
    _rp.deleteProduct(id);
  }

// delete state

  removeById(String id) {
    _pv.rxProductList.st = [..._pv.rxProductList.st]..removeWhere((element) => element.id == id);
  }

  // * serv delete all product

  // delete firestore

  Future<void> deleteAllProducts() {
    return _rp.deleteAllProduct();
  }

  // delete state

  Future<void> deleteAllProductsState() async {
    for (var element in _pv.rxProductList.st) {
      _pv.rxSelectedId.st = element.id;
      await deleteAllProducts();
    }
    _pv.rxIndex.setState((s) => 0);
    _pv.rxProductList.setState((s) => s.clear());
  }

  // * serv add product

  addProductList(Product product) async {
    await _rp.addProductList(product);
  }

  // * serv edit

  editProduct(Product product) => _rp.editProduct(product);

  updateProductList(Product product) {
    final index = _pv.rxProductList.st.indexWhere((element) => element.id == _pv.rxSelectedId.st);
    _pv.rxProductList.setState((s) => s[index] = product);
  }
}
