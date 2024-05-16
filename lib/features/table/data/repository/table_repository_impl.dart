import 'package:flutter_order_test_task/features/table/data/datasources/local/table_local_datasource.dart';
import 'package:flutter_order_test_task/features/table/data/mapper/table_mapper.dart';
import 'package:flutter_order_test_task/features/table/domain/model/table.dart';
import 'package:flutter_order_test_task/features/table/domain/repository/table_repository.dart';

class TableRepositoryImpl implements TableRepository {
  final TableLocalDatasource _localDatasource;

  TableRepositoryImpl(this._localDatasource);

  @override
  Future<List<Table>> getAllTables() async {
    final entities = await _localDatasource.findAllTables();
    return entities.map(TableMapper.toDomainModel).toList();
  }

  @override
  Future<Table?> getTableById(int id) async {
    final table = await _localDatasource.findTableById(id);
    return table != null ? TableMapper.toDomainModel(table) : null;
  }

  @override
  Future<void> insertTable(Table table) {
    return _localDatasource.insertTable(TableMapper.fromDomainModel(table));
  }

  @override
  Future<void> updateTable(Table table) {
    return _localDatasource.updateTable(TableMapper.fromDomainModel(table));
  }

  @override
  Future<void> deleteTable(Table table) {
    return _localDatasource.deleteTable(TableMapper.fromDomainModel(table));
  }
}
