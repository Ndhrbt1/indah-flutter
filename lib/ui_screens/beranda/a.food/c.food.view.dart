part of '_index.dart';

class FoodView extends StatelessWidget {
  const FoodView({Key? key}) : super(key: key);

  FoodCtrl get ct => Ctrl.food;
  FoodData get dt => Data.food.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBuilder.all(
        listenToMany: [_dt.rxProductList, _dt.rxLoadMore],
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => Text(error),
        onData: (data) => _dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : Wrap(
                children: [
                  ...List.generate(
                    _dt.rxProductList.st.length,
                    (index) => OnReactive(
                      () => InkWell(
                        onTap: () {
                          _ct.selectProduct(_dt.rxProductList.st[index].id);
                        },
                        child: Card(
                          child: Container(
                            color: Colors.black45,
                            width: 180,
                            height: 220,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                                  height: 160,
                                  width: 160,
                                  child: Image.network(_dt.rxProductList.st[index].image),
                                ),
                                Text(_dt.rxProductList.st[index].id),
                                // Text(_dt.rxProductList.st[index].name),
                                Text('Rp ${Fun.formatRupiah.format(_dt.rxProductList.st[index].price)}'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  _dt.rxIsEnd.st == true
                      ? const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(child: Text('Produk is empty')),
                        )
                      : TextButton.icon(
                          label: const Text('load  more'),
                          onPressed: () => _ct.readAllProducts(),
                          icon: const Icon(Icons.repeat),
                        ),
                ],
              ),
      ),
    );
  }
}
