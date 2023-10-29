part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      // floatingActionButton: const ProductDetailFab(),
      body: Center(
        child: OnBuilder<Product?>.all(
          listenTo: _dt.rxProductFuture,
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, __) => Center(
            child: Text(error),
          ),
          onData: (data) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: Image.network('${data?.image}'),
              ),
              Text('${data?.id}'),
              Text('${data?.name}'),
              Text('${data?.price}'),
              Text('${data?.quantity}'),
              Text('${data?.createdAt}'),
              Text('${data?.updatedAt}'),
            ],
          ),
        ),
      ),
    );
  }
}
