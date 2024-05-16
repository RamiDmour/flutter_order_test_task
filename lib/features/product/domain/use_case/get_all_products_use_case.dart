import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class GetAllProducts extends UseCase<List<Product>, NoParams> {
  final ProductRepository repository;

  GetAllProducts(this.repository);

  @override
  Future<List<Product>> call(_) async {
    return await repository.findAllProducts();
  }
}
