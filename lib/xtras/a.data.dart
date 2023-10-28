part of '_index.dart';

abstract class Data {
  static Injected<ProductListData> get productList => _productListData;
  static Injected<SplashData> get splash => _splashData;
  static Injected<BerandaData> get beranda => _berandaData;
  static Injected<HomeData> get home => _homeData;
}

final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _splashData = RM1.inj(SplashData(), Ctrl.splash.init);
final _berandaData = RM1.inj(BerandaData(), Ctrl.beranda.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
