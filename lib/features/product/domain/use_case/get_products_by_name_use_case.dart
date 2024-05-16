import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class GetProductsByName extends UseCase<List<Product>, String> {
  final ProductRepository repository;

  GetProductsByName(this.repository);

  @override
  Future<List<Product>> call(String name) async {
    return await repository.findProductsByName(name);
  }
}
