import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/category/domain/model/category.dart';
import 'package:flutter_order_test_task/features/category/domain/repository/category_repository.dart';

class GetAllCategories extends UseCase<List<Category>, NoParams> {
  final CategoryRepository repository;

  GetAllCategories(this.repository);

  @override
  Future<List<Category>> call(NoParams params) async {
    return await repository.getAllCategories();
  }
}
