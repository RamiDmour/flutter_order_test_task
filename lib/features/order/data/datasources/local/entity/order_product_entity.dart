import 'package:floor/floor.dart';

import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_entity.dart';
import 'package:flutter_order_test_task/features/product/data/datasource/local/entity/product_entity.dart';

@Entity(tableName: 'OrderProduct', foreignKeys: [
  ForeignKey(
    childColumns: ['orderId'],
    parentColumns: ['id'],
    entity: OrderEntity,
  ),
  ForeignKey(
    childColumns: ['productId'],
    parentColumns: ['id'],
    entity: ProductEntity,
  )
])
class OrderProductEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int orderId;
  final int productId;

  OrderProductEntity({
    this.id,
    required this.orderId,
    required this.productId,
  });
}
