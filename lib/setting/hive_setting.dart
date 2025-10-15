import 'package:hive/hive.dart';
import 'package:technical_task/assignment3/model/hive_all_product_model.dart';

class HiveSettings {
  static hiveSetting() async {
    // Create Hive Box
    await Hive.openBox<HiveAllProductModel>('productsBox5');
  }
}