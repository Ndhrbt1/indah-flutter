part of '_index.dart';

class TechView extends StatelessWidget {
  const TechView({Key? key}) : super(key: key);

  TechCtrl get ct => Ctrl.tech;
  TechData get dt => Data.tech.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TechAppbar(),
      ),
      floatingActionButton: TechFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TechCharlie(),
            TechDelta(),
            TechEcho(),
          ],
        ),
      ),
    );
  }
}
