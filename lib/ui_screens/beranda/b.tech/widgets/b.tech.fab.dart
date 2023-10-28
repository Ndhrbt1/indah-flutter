part of '../_index.dart';

class TechFab extends StatelessWidget {
  const TechFab({Key? key}) : super(key: key);

  TechCtrl get ct => Ctrl.tech;
  TechData get dt => Data.tech.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
