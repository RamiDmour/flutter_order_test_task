import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_entity.dart';
import 'package:flutter_order_test_task/features/table/domain/model/table.dart';

class TableMapper {
  static TableEntity fromDomainModel(Table table) {
    return TableEntity(
      id: table.id,
      name: table.name,
    );
  }

  static Table toDomainModel(TableEntity entity) {
    return Table(
      id: entity.id,
      name: entity.name,
    );
  }
}
