part of '../_index.dart';

class LifeDelta extends StatelessWidget {
  const LifeDelta({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
