part of '../_index.dart';

class LifeFab extends StatelessWidget {
  const LifeFab({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
