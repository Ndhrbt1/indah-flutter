part of '../_index.dart';

class BerandaCharlie extends StatelessWidget {
  const BerandaCharlie({Key? key}) : super(key: key);

  BerandaCtrl get ct => Ctrl.beranda;
  BerandaData get dt => Data.beranda.st;

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
