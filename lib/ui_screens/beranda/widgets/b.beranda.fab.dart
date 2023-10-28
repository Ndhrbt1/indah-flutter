part of '../_index.dart';

class BerandaFab extends StatelessWidget {
  const BerandaFab({Key? key}) : super(key: key);

  BerandaCtrl get ct => Ctrl.beranda;
  BerandaData get dt => Data.beranda.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
