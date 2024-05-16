import 'package:flutter_order_test_task/features/category/data/datasources/local/entity/category_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class CategoryLocalDatasource {
  @Query('SELECT * FROM CategoryEntity')
  Future<List<CategoryEntity>> findAllCategories();

  @Query('SELECT * FROM CategoryEntity WHERE id = :id')
  Future<CategoryEntity?> findCategoryById(int id);

  @insert
  Future<void> insertCategory(CategoryEntity category);

  @update
  Future<void> updateCategory(CategoryEntity category);

  @delete
  Future<void> deleteCategory(CategoryEntity category);
}
