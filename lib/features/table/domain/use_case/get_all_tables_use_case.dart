import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/table/domain/model/table.dart';
import 'package:flutter_order_test_task/features/table/domain/repository/table_repository.dart';

class GetAllTables extends UseCase<List<Table>, NoParams> {
  final TableRepository repository;

  GetAllTables(this.repository);

  @override
  Future<List<Table>> call(_) async {
    return await repository.getAllTables();
  }
}
