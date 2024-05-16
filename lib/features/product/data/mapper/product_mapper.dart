import 'package:flutter_order_test_task/features/product/data/datasource/local/entity/product_entity.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';

class ProductMapper {
  static Product toDomainModel(ProductEntity entity) {
    return Product(
      id: entity.id,
      name: entity.name,
      categoryId: entity.categoryId,
    );
  }

  static ProductEntity fromDomainModel(Product product) {
    return ProductEntity(
      id: product.id,
      name: product.name,
      categoryId: product.categoryId,
    );
  }
}
