part of '../_index.dart';

class LifeAppbar extends StatelessWidget {
  const LifeAppbar({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
