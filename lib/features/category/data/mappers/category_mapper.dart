import 'package:flutter_order_test_task/features/category/data/datasources/local/entity/category_entity.dart';
import 'package:flutter_order_test_task/features/category/domain/model/category.dart';

class CategoryMapper {
  static Category toDomainModel(CategoryEntity entity) {
    return Category(id: entity.id, name: entity.name);
  }

  static CategoryEntity fromDomainModel(Category model) {
    return CategoryEntity(id: model.id, name: model.name);
  }
}
