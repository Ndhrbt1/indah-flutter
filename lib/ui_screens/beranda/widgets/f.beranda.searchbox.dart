part of '../_index.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        html.window.open('https://github.com/Ndhrbt1/indah-flutter', 'new tab');
      },
      child: const Text('github'),
    );
  }
}
