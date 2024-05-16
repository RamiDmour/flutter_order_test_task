import 'package:flutter_order_test_task/features/category/domain/model/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getAllCategories();
  Future<Category?> getCategoryById(int id);
  Future<void> insertCategory(Category category);
  Future<void> updateCategory(Category category);
  Future<void> deleteCategory(Category category);
}
