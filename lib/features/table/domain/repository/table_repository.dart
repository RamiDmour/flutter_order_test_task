import 'package:flutter_order_test_task/features/table/domain/model/table.dart';

abstract class TableRepository {
  Future<List<Table>> getAllTables();
  Future<Table?> getTableById(int id);
  Future<void> insertTable(Table table);
  Future<void> updateTable(Table table);
  Future<void> deleteTable(Table table);
}
