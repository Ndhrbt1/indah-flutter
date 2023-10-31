part of '_index.dart';

class ProductRepo {
// * repo read list
  Future<List<Product>> readAllProducts() async {
    List<Product> products = [];

    final QuerySnapshot<Map<String, dynamic>> result = await x1FbFirestore.readCollection(
      colId: 'product',
      limit: _pv.limit,
      // lastCreateTime: _pv.rxProductList.st.isEmpty ? '9999.99.9' : _pv.rxProductList.st.last.createdAt,
      lastCreateTime: _pv.rxProductList.st.isNotEmpty ? _pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );

    for (var element in result.docs) {
      final x = element.data();
      products.add(Product.fromMap(x));
    }

    logx.i(products.toString());
    logx.i(products.length.toString());

    return products;
  }

  // * repo read detail
  Future<Product> readProduct() async {
    final result = await x1FbFirestore.readDocument(
      colId: 'product',
      docId: _pv.rxSelectedId.st,
    );

    logx.wtf(result.toString());

    final productResult = Product.fromMap(result.data());
    logx.wtf(productResult.toString());
    return productResult;
  }

  // * repo delete 1 product

  Future<void> deleteProduct(String id) async {
    await x1FbFirestore.deleteDocument(
      colId: 'product',
      docId: id,
    );
    logx.e('delete');
  }

  // * repo delete all Products

  Future<void> deleteAllProduct() async {
    await x1FbFirestore.deleteAllDocument(colId: 'product');
  }
  // * repo add product

  Future<void> addProductList(Product product) async {
    await x1FbFirestore.createDocument(
      colId: 'product',
      docId: product.id,
      data: product.toMap(),
    );
  }

  // * repo update product
  Future<void> editProduct(Product product) async {
    await x1FbFirestore.updateDocument(
      colId: 'product',
      docId: product.id,
      data: product.toMap(),
    );
  }

  Future<List<Product>> addToCart(Product product) async {
    await Future.delayed(1.seconds);
    List<Product> products = [];
    _pv.rxCartList.st = [..._pv.rxCartList.st]..insert(0, product);
    return products;
  }
}
