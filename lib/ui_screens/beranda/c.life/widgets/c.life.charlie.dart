part of '../_index.dart';

class LifeCharlie extends StatelessWidget {
  const LifeCharlie({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
