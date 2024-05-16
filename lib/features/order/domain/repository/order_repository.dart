import 'package:flutter_order_test_task/features/order/domain/model/order.dart';

abstract class OrderRepository {
  Future<int> createOrder(List<int> productIds);
  Future<List<Order>> getAllOrders();
  Future<Order?> getOrderById(int id);
}
