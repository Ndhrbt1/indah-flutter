part of '../_index.dart';

class BerandaAppbar extends StatelessWidget {
  const BerandaAppbar({Key? key}) : super(key: key);

  BerandaCtrl get ct => Ctrl.beranda;
  BerandaData get dt => Data.beranda.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
