import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_order_entity.dart';

@dao
abstract class TableOrderLocalDatasource {
  @Query('SELECT * FROM TableOrderEntity')
  Future<List<TableOrderEntity>> findAllTableOrders();

  @Query('SELECT * FROM TableOrderEntity WHERE tableId = :tableId')
  Future<List<TableOrderEntity>> findOrdersByTableId(int tableId);

  @insert
  Future<void> insertTableOrder(TableOrderEntity tableOrder);

  @update
  Future<void> updateTableOrder(TableOrderEntity tableOrder);

  @delete
  Future<void> deleteTableOrder(TableOrderEntity tableOrder);
}
