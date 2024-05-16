import 'package:floor/floor.dart';
import 'package:flutter_order_test_task/core/local_database/date_time_converter.dart';
import 'package:flutter_order_test_task/features/category/data/datasources/local/category_local_datasource.dart';
import 'package:flutter_order_test_task/features/category/data/datasources/local/entity/category_entity.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_entity.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/entity/order_product_entity.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/order_local_datasource.dart';
import 'package:flutter_order_test_task/features/order/data/datasources/local/order_product_local_datasource.dart';
import 'package:flutter_order_test_task/features/product/data/datasource/local/entity/product_entity.dart';
import 'package:flutter_order_test_task/features/product/data/datasource/local/product_local_datasource.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_entity.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/entity/table_order_entity.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/table_local_datasource.dart';
import 'package:flutter_order_test_task/features/table/data/datasources/local/table_order_local_datasource.dart';

@Database(version: 1, entities: [
  OrderEntity,
  TableEntity,
  TableOrderEntity,
  OrderProductEntity,
  CategoryEntity,
  ProductEntity
])
@TypeConverters([DateTimeConverter])
abstract class AppDatabase extends FloorDatabase {
  OrderLocalDatasource get orderLocalDatasource;
  OrderProductLocalDatasource get orderProductLocalDatasource;
  ProductLocalDatasource get productLocalDatasource;
  CategoryLocalDatasource get categoryLocalDatasource;
  TableLocalDatasource get tableDao;
  TableOrderLocalDatasource get tableOrderDao;
}
