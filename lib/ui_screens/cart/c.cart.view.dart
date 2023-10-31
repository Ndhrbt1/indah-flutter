part of '_index.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: CartAppbar(),
        ),
        floatingActionButton: const CartFab(),
        body: OnBuilder.all(
          listenTo: _dt.rxProductFuture,
          onWaiting: () => const Center(child: CircularProgressIndicator()),
          onError: (error, refreshError) => Text(error),
          onData: (data) => _dt.rxProductFuture.st == null
              ? const Text('cart is empty')
              : ListView(
                  children: [
                    ...List.generate(
                      _dt.rxCartList.st.length,
                      (index) => OnReactive(
                        () => Card(
                          child: ListTile(
                            leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(_dt.rxCartList.st[index].image),
                            ),
                            title: Text(_dt.rxCartList.st[index].name),
                            subtitle: Text('Rp ${Fun.formatRupiah.format(_dt.rxCartList.st[index].price)}'),
                            trailing: Text('${_dt.rxCartList.st[index].quantity}'),
                            onTap: () {
                              // _ct.selectProduct(_dt.rxProductList.st[index].id);
                              // logx.w('this is selected id ${_dt.rxSelectedId.st}');
                            },
                            // selected: _dt.rxSelectedId.st == _dt.rxProductList.st[index].id,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ));
  }
}
