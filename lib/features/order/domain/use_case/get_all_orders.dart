import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/order/domain/model/order.dart';
import 'package:flutter_order_test_task/features/order/domain/repository/order_repository.dart';

class GetAllOrders extends UseCase<List<Order>, NoParams> {
  final OrderRepository repository;

  GetAllOrders(this.repository);

  @override
  Future<List<Order>> call(_) async {
    return await repository.getAllOrders();
  }
}
