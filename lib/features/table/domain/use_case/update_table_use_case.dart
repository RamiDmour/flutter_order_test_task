import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/table/domain/model/table.dart';
import 'package:flutter_order_test_task/features/table/domain/repository/table_repository.dart';

class UpdateTable extends UseCase<void, Table> {
  final TableRepository repository;

  UpdateTable(this.repository);

  @override
  Future<void> call(Table table) async {
    await repository.updateTable(table);
  }
}
