part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.splash: (RouteData data) => const SplashView(),
    Routes.beranda: (RouteData data) => const BerandaView(),
  };
}
