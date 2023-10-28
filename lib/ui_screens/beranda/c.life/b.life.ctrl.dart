part of '_index.dart';

class LifeCtrl {
  LifeData get dt => Data.life.st;

  init() => logxx.i(LifeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
