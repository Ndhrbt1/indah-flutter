part of '_index.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

  FoodCtrl get ct => Ctrl.food;
  FoodData get dt => Data.food.st;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FoodAppbar(),
      ),
      floatingActionButton: FoodFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FoodCharlie(),
            FoodDelta(),
            FoodEcho(),
          ],
        ),
      ),
    );
  }
}
