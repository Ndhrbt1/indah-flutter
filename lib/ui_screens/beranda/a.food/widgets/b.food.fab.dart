part of '../_index.dart';

class FoodFab extends StatelessWidget {
  const FoodFab({Key? key}) : super(key: key);

  FoodCtrl get ct => Ctrl.food;
  FoodData get dt => Data.food.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => ct.action(),
    );
  }
}
