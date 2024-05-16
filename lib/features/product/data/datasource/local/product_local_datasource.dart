import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/product/data/datasource/local/entity/product_entity.dart';

@dao
abstract class ProductLocalDatasource {
  @Query('SELECT * FROM ProductEntity')
  Future<List<ProductEntity>> findAllProducts();

  @Query('SELECT * FROM ProductEntity WHERE id = :id')
  Future<ProductEntity?> findProductById(int id);

  @Query('SELECT * FROM ProductEntity WHERE name LIKE :name')
  Future<List<ProductEntity>> findProductsByName(String name);

  @insert
  Future<int> insertProduct(ProductEntity product);

  @update
  Future<int> updateProduct(ProductEntity product);

  @delete
  Future<int> deleteProduct(ProductEntity product);
}
