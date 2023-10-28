part of '_index.dart';

class TechCtrl {
  TechData get dt => Data.tech.st;

  init() => logxx.i(TechCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);
}
