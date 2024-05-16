import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/category/domain/model/category.dart';
import 'package:flutter_order_test_task/features/category/domain/repository/category_repository.dart';

class UpdateCategory extends UseCase<void, Category> {
  final CategoryRepository repository;

  UpdateCategory(this.repository);

  @override
  Future<void> call(Category category) async {
    await repository.updateCategory(category);
  }
}
