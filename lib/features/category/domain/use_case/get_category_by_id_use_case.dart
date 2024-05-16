import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/category/domain/model/category.dart';
import 'package:flutter_order_test_task/features/category/domain/repository/category_repository.dart';

class GetCategoryById extends UseCase<Category?, int> {
  final CategoryRepository repository;

  GetCategoryById(this.repository);

  @override
  Future<Category?> call(int id) async {
    return await repository.getCategoryById(id);
  }
}
