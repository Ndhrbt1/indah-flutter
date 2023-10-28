part of '_index.dart';

class SplashCtrl {
  init() {
    logxx.i(SplashCtrl, '...');
    delayedNavigation();
  }

  action() => _dt.rxInt.setState((s) => s + 1);

  delayedNavigation() async {
    await Future.delayed(3.seconds);

    nav.toReplacement(Routes.beranda);
  }
}
