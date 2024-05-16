import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/core/local_database/date_time_converter.dart';

@entity
@TypeConverters([DateTimeConverter])
class OrderEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final DateTime creationDate;

  OrderEntity({this.id, required this.creationDate});
}
