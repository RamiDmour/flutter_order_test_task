import 'package:flutter_order_test_task/features/order/domain/repository/order_repository.dart';

class CreateOrder {
  final OrderRepository repository;

  CreateOrder(this.repository);

  Future<int> call(List<int> productIds) async {
    return await repository.createOrder(productIds);
  }
}
