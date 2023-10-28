part of '../_index.dart';

class FoodEcho extends StatelessWidget {
  const FoodEcho({Key? key}) : super(key: key);

  FoodCtrl get ct => Ctrl.food;
  FoodData get dt => Data.food.st;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
