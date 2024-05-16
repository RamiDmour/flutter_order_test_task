import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_entity.dart';

@dao
abstract class OrderLocalDatasource {
  @Query('SELECT * FROM OrderEntity')
  Future<List<OrderEntity>> findAllOrders();

  @Query('SELECT * FROM OrderEntity WHERE id = :id')
  Future<OrderEntity?> findOrderById(int id);

  @insert
  Future<int> insertOrder(OrderEntity order);

  @update
  Future<void> updateOrder(OrderEntity order);

  @delete
  Future<void> deleteOrder(OrderEntity order);

  @Query(
      'SELECT * FROM ProductEntity INNER JOIN OrderProductEntity ON Product.id = OrderProductEntity.productId WHERE OrderProductEntity.orderId = :orderId')
  Future<List<OrderEntity>> findProductsForOrder(int orderId);
}
