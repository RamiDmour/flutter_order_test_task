import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_entity.dart';
import 'package:flutter_order_test_task/features/order/domain/model/order.dart';

class OrderMapper {
  static Order toDomainModel(OrderEntity entity) {
    return Order(
      id: entity.id,
      creationDate: entity.creationDate,
    );
  }

  static OrderEntity fromDomainModel(Order model) {
    return OrderEntity(
      id: model.id,
      creationDate: model.creationDate,
    );
  }
}
