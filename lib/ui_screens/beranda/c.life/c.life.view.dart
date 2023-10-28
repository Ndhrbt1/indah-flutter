part of '_index.dart';

class LifeView extends StatelessWidget {
  const LifeView({Key? key}) : super(key: key);

  LifeCtrl get ct => Ctrl.life;
  LifeData get dt => Data.life.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LifeAppbar(),
      ),
      floatingActionButton: LifeFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LifeCharlie(),
            LifeDelta(),
            LifeEcho(),
          ],
        ),
      ),
    );
  }
}
