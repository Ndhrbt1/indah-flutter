part of '_index.dart';

abstract class Data {
  static Injected<ProductListData> get productList => _productListData;
  static Injected<SplashData> get splash => _splashData;
  static Injected<BerandaData> get beranda => _berandaData;
  static Injected<HomeData> get home => _homeData;
  static Injected<FoodData> get food => _foodData;
  static Injected<LifeData> get life => _lifeData;
  static Injected<TechData> get tech => _techData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
}

final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _splashData = RM1.inj(SplashData(), Ctrl.splash.init);
final _berandaData = RM1.inj(BerandaData(), Ctrl.beranda.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _foodData = RM1.inj(FoodData(), Ctrl.food.init);
final _lifeData = RM1.inj(LifeData(), Ctrl.life.init);
final _techData = RM1.inj(TechData(), Ctrl.tech.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
