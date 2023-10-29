part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () {
            RM.navigate.toCupertinoDialog(
              CupertinoAlertDialog(
                title: const Text('Confirmation'),
                content: const Text('Are you sure to delete these items?'),
                actions: [
                  CupertinoDialogAction(
                    child: const Text("Cancel"),
                    onPressed: () => RM.navigate.back(),
                  ),
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    isDefaultAction: true,
                    onPressed: () {
                      nav.back();
                      _ct.deleteProduct();
                    },
                    child: const Text("DELETE"),
                  ),
                ],
              ),
            );
          },
          icon: Opacity(
            opacity: themeRM.isDarkTheme ? 1 : 0.8,
            child: const Icon(Icons.delete),
          ),
          iconSize: 24,
          splashRadius: 35,
        )
      ],
    );
  }
}
