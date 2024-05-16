import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/order/domain/model/order.dart';
import 'package:flutter_order_test_task/features/order/domain/repository/order_repository.dart';

class GetOrderById extends UseCase<Order?, int> {
  final OrderRepository repository;

  GetOrderById(this.repository);

  @override
  Future<Order?> call(int id) async {
    return await repository.getOrderById(id);
  }
}
