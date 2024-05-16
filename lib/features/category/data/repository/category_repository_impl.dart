import 'package:flutter_order_test_task/features/category/data/datasources/local/category_local_datasource.dart';
import 'package:flutter_order_test_task/features/category/data/mappers/category_mapper.dart';
import 'package:flutter_order_test_task/features/category/domain/model/category.dart';
import 'package:flutter_order_test_task/features/category/domain/repository/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryLocalDatasource categoryLocalDatasource;

  CategoryRepositoryImpl(this.categoryLocalDatasource);

  @override
  Future<List<Category>> getAllCategories() async {
    return (await categoryLocalDatasource.findAllCategories())
        .map((category) => CategoryMapper.toDomainModel(category))
        .toList();
  }

  @override
  Future<Category?> getCategoryById(int id) async {
    final category = await categoryLocalDatasource.findCategoryById(id);

    return category == null ? null : CategoryMapper.toDomainModel(category);
  }

  @override
  Future<void> insertCategory(Category category) async {
    await categoryLocalDatasource.insertCategory(
      CategoryMapper.fromDomainModel(category),
    );
  }

  @override
  Future<void> updateCategory(Category category) async {
    await categoryLocalDatasource
        .updateCategory(CategoryMapper.fromDomainModel(category));
  }

  @override
  Future<void> deleteCategory(Category category) async {
    await categoryLocalDatasource
        .deleteCategory(CategoryMapper.fromDomainModel(category));
  }
}
