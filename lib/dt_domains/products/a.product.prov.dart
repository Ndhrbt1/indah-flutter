part of '_index.dart';

class ProductProv {
// * prov list

  final rxTitle = 'ProductList'.inj();

  final rxInt = 0.inj();

  final rxProductList = RM.inject<List<Product>>(() => []);

  final limit = 2;

  final rxIsEnd = false.inj();

  final rxIndex = RM.inject<int>(
    () => 0,
    persist: () => PersistState(
      key: 'rxIndex',
      throttleDelay: 500,
      shouldRecreateTheState: false,
    ),
  );

  final rxLoadMore = RM.injectFuture<List<Product>>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => _sv.readAllProducts(),
      onSetState: (snap) {
        if (snap.hasData) {
          final moreProduct = snap.state.whereType<Product>().toList();
          _sv.addToList(moreProduct);
        }
      },
    ),
  );

  // *prov detail

  final rxSelectedId = RM.inject<String>(() => '');

  final rxProductFuture = RM.injectFuture<Product?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => _sv.readProduct(),
    ),
  );
}
