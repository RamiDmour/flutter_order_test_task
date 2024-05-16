import 'package:floor/floor.dart';

@entity
class TableEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;

  TableEntity({
    this.id,
    required this.name,
  });
}
