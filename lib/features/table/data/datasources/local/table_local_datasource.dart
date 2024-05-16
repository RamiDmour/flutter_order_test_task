import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_entity.dart';

@dao
abstract class TableLocalDatasource {
  @Query('SELECT * FROM TableEntity')
  Future<List<TableEntity>> findAllTables();

  @Query('SELECT * FROM TableEntity WHERE id = :id')
  Future<TableEntity?> findTableById(int id);

  @insert
  Future<void> insertTable(TableEntity table);

  @update
  Future<void> updateTable(TableEntity table);

  @delete
  Future<void> deleteTable(TableEntity table);
}
