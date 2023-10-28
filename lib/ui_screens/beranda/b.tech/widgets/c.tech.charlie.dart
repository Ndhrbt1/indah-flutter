part of '../_index.dart';

class TechCharlie extends StatelessWidget {
  const TechCharlie({Key? key}) : super(key: key);

  TechCtrl get ct => Ctrl.tech;
  TechData get dt => Data.tech.st;

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
