part of '_index.dart';

class FoodData {
  final rxTitle = 'Food'.inj();

  final rxInt = 0.inj();

  final rxProductList = _pv.rxProductList;

  final limit = _pv.limit;

  final rxIsEnd = _pv.rxIsEnd;

  final rxLoadMore = _pv.rxLoadMore;

  final rxSelectedId = _pv.rxSelectedId;
}
