part of '_index.dart';

abstract class Ctrl {
  static ProductListCtrl get productList => ProductListCtrl();
  static SplashCtrl get splash => SplashCtrl();
  static BerandaCtrl get beranda => BerandaCtrl();
  static HomeCtrl get home => HomeCtrl();
  static FoodCtrl get food => FoodCtrl();
  static LifeCtrl get life => LifeCtrl();
  static TechCtrl get tech => TechCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static CartCtrl get cart => CartCtrl();
}
