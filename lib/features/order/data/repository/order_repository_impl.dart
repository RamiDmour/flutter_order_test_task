import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_entity.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_product_entity.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/order_local_datasource.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/order_product_local_datasource.dart';
import 'package:flutter_order_test_task/features/order/data/mapper/order_mapper.dart';
import 'package:flutter_order_test_task/features/order/domain/model/order.dart';
import 'package:flutter_order_test_task/features/order/domain/repository/order_repository.dart';

class OrderRepositoryImpl extends OrderRepository {
  final OrderLocalDatasource _orderLocalDatasource;
  final OrderProductLocalDatasource _orderProductLocalDatasource;

  OrderRepositoryImpl(
    this._orderLocalDatasource,
    this._orderProductLocalDatasource,
  );

  @override
  Future<int> createOrder(List<int> productIds) async {
    final order = OrderEntity(creationDate: DateTime.now());
    final int orderId = await _orderLocalDatasource
        .insertOrder(order); // This method now returns the generated ID.

    for (var productId in productIds) {
      final orderProduct =
          OrderProductEntity(orderId: orderId, productId: productId);
      await _orderProductLocalDatasource.insertOrderProduct(orderProduct);
    }

    return orderId;
  }

  Future<void> deleteOrder(int orderId) async {
    final orderProducts =
        await _orderProductLocalDatasource.findProductsByOrderId(orderId);
    for (var orderProduct in orderProducts) {
      await _orderProductLocalDatasource.deleteOrderProduct(orderProduct);
    }

    final order = await _orderLocalDatasource.findOrderById(orderId);
    if (order != null) {
      await _orderLocalDatasource.deleteOrder(order);
    }
  }

  @override
  Future<List<Order>> getAllOrders() async {
    final entities = await _orderLocalDatasource.findAllOrders();
    return entities.map(OrderMapper.toDomainModel).toList();
  }

  @override
  Future<Order?> getOrderById(int id) async {
    final entity = await _orderLocalDatasource.findOrderById(id);
    return entity != null ? OrderMapper.toDomainModel(entity) : null;
  }

  // Future<List<Product>> getOrderProducts(int orderId) async {
  //   final orderProducts =
  //       await orderProductLocalDatasource.findProductsByOrderId(orderId);
  //   List<Product> products = [];
  //   for (var orderProduct in orderProducts) {
  //     final product = await productLocalDatasource.findProductById(orderProduct.productId);
  //     if (product != null) {
  //       products.add(product);
  //     }
  //   }
  //   return products;
  // }
}
