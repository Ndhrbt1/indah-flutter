part of '_index.dart';

class BerandaCtrl {
  init() => logxx.i(BerandaCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);
}
