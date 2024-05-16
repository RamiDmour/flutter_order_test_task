import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_product_entity.dart';

@dao
abstract class OrderProductLocalDatasource {
  @Query('SELECT * FROM OrderProductEntity WHERE orderId = :orderId')
  Future<List<OrderProductEntity>> findProductsByOrderId(int orderId);

  @insert
  Future<void> insertOrderProduct(OrderProductEntity orderProduct);

  @delete
  Future<void> deleteOrderProduct(OrderProductEntity orderProduct);
}
