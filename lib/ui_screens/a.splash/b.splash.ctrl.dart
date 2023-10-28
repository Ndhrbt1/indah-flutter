part of '_index.dart';

class SplashCtrl {
  SplashData get dt => Data.splash.st;

  init() {
    logxx.i(SplashCtrl, '...');
    delayedNavigation();
  }

  action() => dt.rxInt.setState((s) => s + 1);

  delayedNavigation() async {
    await Future.delayed(3.seconds);

    nav.toReplacement(Routes.productList);
  }
}
