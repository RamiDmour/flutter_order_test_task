import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_entity.dart';

@Entity(foreignKeys: [
  ForeignKey(
    childColumns: ['tableId'],
    parentColumns: ['id'],
    entity: TableEntity,
  )
])
class TableOrderEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int tableId;
  final int orderId;

  TableOrderEntity(this.id, this.tableId, this.orderId);
}
