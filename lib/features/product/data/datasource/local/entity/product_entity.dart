import 'package:floor/floor.dart';

import 'package:flutter_order_test_task/features/category/data/datasources/local/entity/category_entity.dart';

@Entity(foreignKeys: [
  ForeignKey(
    childColumns: ['categoryId'],
    parentColumns: ['id'],
    entity: CategoryEntity,
  )
])
class ProductEntity {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;
  final int categoryId;

  ProductEntity({
    required this.id,
    required this.name,
    required this.categoryId,
  });
}
