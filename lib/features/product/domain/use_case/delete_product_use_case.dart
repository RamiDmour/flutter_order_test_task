import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class DeleteProduct extends UseCase<int, Product> {
  final ProductRepository repository;

  DeleteProduct(this.repository);

  @override
  Future<int> call(Product product) async {
    return await repository.deleteProduct(product);
  }
}
