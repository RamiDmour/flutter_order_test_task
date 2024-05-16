import 'package:flutter_order_test_task/features/product/domain/model/product.dart';

abstract class ProductRepository {
  Future<List<Product>> findAllProducts();
  Future<Product?> findProductById(int id);
  Future<List<Product>> findProductsByName(String name);
  Future<int> insertProduct(Product product);
  Future<int> updateProduct(Product product);
  Future<int> deleteProduct(Product product);
}
