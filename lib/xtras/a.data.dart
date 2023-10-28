part of '_index.dart';

abstract class Data {
  static Injected<CobaSatuData> get cobaSatu => _cobaSatuData;
  static Injected<CobaDuaData> get cobaDua => _cobaDuaData;
  static Injected<CobaTigaData> get cobaTiga => _cobaTigaData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<SplashData> get splash => _splashData;
}

final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _splashData = RM1.inj(SplashData(), Ctrl.splash.init);

final _cobaSatuData = RM1.inj(CobaSatuData(), Ctrl.cobaSatu.init);
final _cobaDuaData = RM1.inj(CobaDuaData(), Ctrl.cobaDua.init);
final _cobaTigaData = RM1.inj(CobaTigaData(), Ctrl.cobaTiga.init);
