part of '../_index.dart';

class TechAppbar extends StatelessWidget {
  const TechAppbar({Key? key}) : super(key: key);

  TechCtrl get ct => Ctrl.tech;
  TechData get dt => Data.tech.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
    );
  }
}
