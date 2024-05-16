import 'package:flutter_order_test_task/features/product/data/datasource/local/product_local_datasource.dart';
import 'package:flutter_order_test_task/features/product/data/mapper/product_mapper.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductLocalDatasource _productLocalDatasource;

  ProductRepositoryImpl(this._productLocalDatasource);

  @override
  Future<List<Product>> findAllProducts() async {
    final products = await _productLocalDatasource.findAllProducts();
    var result = products
        .map((product) => ProductMapper.toDomainModel(product))
        .toList();

    return result;
  }

  @override
  Future<Product?> findProductById(int id) async {
    final product = await _productLocalDatasource.findProductById(id);

    return product == null ? null : ProductMapper.toDomainModel(product);
  }

  @override
  Future<List<Product>> findProductsByName(String name) async {
    final products = await _productLocalDatasource.findProductsByName(name);

    return products.map((e) => ProductMapper.toDomainModel(e)).toList();
  }

  @override
  Future<int> insertProduct(Product product) async {
    return _productLocalDatasource
        .insertProduct(ProductMapper.fromDomainModel(product));
  }

  @override
  Future<int> updateProduct(Product product) async {
    return _productLocalDatasource
        .updateProduct(ProductMapper.fromDomainModel(product));
  }

  @override
  Future<int> deleteProduct(Product product) async {
    return _productLocalDatasource
        .deleteProduct(ProductMapper.fromDomainModel(product));
  }
}
