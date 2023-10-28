part of '../_index.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search...',
        filled: true,
        // fillColor: Colors.white,
        border: InputBorder.none,
      ),
    );
  }
}
