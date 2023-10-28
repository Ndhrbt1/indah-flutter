part of '../_index.dart';

class FoodCharlie extends StatelessWidget {
  const FoodCharlie({Key? key}) : super(key: key);

  FoodCtrl get ct => Ctrl.food;
  FoodData get dt => Data.food.st;

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
