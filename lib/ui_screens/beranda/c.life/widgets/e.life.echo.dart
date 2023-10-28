part of '../_index.dart';

class LifeEcho extends StatelessWidget {
  const LifeEcho({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
