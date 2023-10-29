part of '_index.dart';

class FoodCtrl {
  FoodData get dt => Data.food.st;

  init() => logxx.i(FoodCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  readAllProducts() {
    _sv.readAllProducts();
  }

  selectProduct(String id) {
    _sv.setSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
