import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class GetProductById extends UseCase<Product?, int> {
  final ProductRepository repository;

  GetProductById(this.repository);

  @override
  Future<Product?> call(int id) async {
    return await repository.findProductById(id);
  }
}
