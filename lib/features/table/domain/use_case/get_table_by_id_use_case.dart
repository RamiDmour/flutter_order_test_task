import 'package:flutter_order_test_task/core/utills/use_case.dart';
import 'package:flutter_order_test_task/features/table/domain/model/table.dart';
import 'package:flutter_order_test_task/features/table/domain/repository/table_repository.dart';

class GetTableById extends UseCase<Table?, int> {
  final TableRepository repository;

  GetTableById(this.repository);

  @override
  Future<Table?> call(int id) async {
    return repository.getTableById(id);
  }
}
