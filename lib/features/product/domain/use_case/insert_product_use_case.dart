import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/product/data/datasource/local/entity/product_entity.dart';
import 'package:flutter_order_test_task/features/product/domain/model/product.dart';
import 'package:flutter_order_test_task/features/product/domain/repository/product_repository.dart';

class InsertProduct extends UseCase<int, Product> {
  final ProductRepository repository;

  InsertProduct(this.repository);

  @override
  Future<int> call(Product product) async {
    return await repository.insertProduct(product);
  }
}
