part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      // floatingActionButton: const ProductListFab(),
      body: OnBuilder<List<Product>>.all(
        listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
        onError: (e, s) => Center(
          child: Text('$e'),
        ),
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onData: (data) => _dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : ListView(
                children: [
                  ...List.generate(
                    _dt.rxProductList.st.length,
                    (index) => OnReactive(
                      () => Card(
                        child: ListTile(
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.network(_dt.rxProductList.st[index].image),
                          ),
                          title: Text(_dt.rxProductList.st[index].name),
                          subtitle: Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}'),
                          trailing: Text('${_dt.rxProductList.st[index].quantity}'),
                          onTap: () {
                            _ct.selectProduct(_dt.rxProductList.st[index].id);
                            logx.w('this is selected id ${_dt.rxSelectedId.st}');
                          },
                          selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                        ),
                      ),
                    ),
                  ),
                  _dt.rxIsEnd.st == true
                      ? const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(child: Text('end of list')),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _ct.readAllProducts();
                          },
                          child: const Text('loadmore'),
                        ),
                ],
              ),
      ),
    );

    //   body: OnBuilder<List<Product>>.all(
    //     listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
    //     onWaiting: () => const Center(child: CircularProgressIndicator()),
    //     onError: (error, refreshError) => Text(error),
    //     onData: (data) => ListView(
    //       children: [
    //         Row(
    //           children: [
    //             ...List.generate(
    //               _dt.rxProductList.st.length,
    //               (index) => Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   height: 100,
    //                   width: 100,
    //                   color: Colors.amber,
    //                   child: Column(
    //                     children: [
    //                       Text(_dt.rxProductList.st[index].id),
    //                       Text(_dt.rxProductList.st[index].name),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         _dt.rxIsEnd.st == true
    //             ? const Padding(
    //                 padding: EdgeInsets.all(20.0),
    //                 child: Center(child: Text('end of list')),
    //               )
    //             : ElevatedButton(
    //                 onPressed: () {
    //                   _ct.readAllProducts();
    //                 },
    //                 child: const Text('loadmore'),
    //               ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
